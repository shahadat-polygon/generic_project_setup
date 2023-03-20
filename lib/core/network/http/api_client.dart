import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:generic_project_setup/core/cache/preference_cache.dart';
import 'package:generic_project_setup/core/error/api_exceptions.dart';
import 'package:generic_project_setup/core/network/http/resource.dart';
import 'package:logger/logger.dart';

import '../../../app/base/base_cache.dart';
import '../../../app/config/env_config/api_client_config.dart';

// No need to delete anything from here

Dio _dio = Dio();

class ApiClient {
  final ApiClientConfig _config;
  var logger = Logger();

  String? _token;

  final BaseCache _cache = PreferenceCache();
  Future? _ongoingRefreshCall;

  ApiClient(this._config);

  ApiClientConfig get config => _config;

  void removeToken() {
    _token = null;
    BaseCache baseCache = PreferenceCache();
    baseCache.flushAll().then((value) {

    });
  }

  Future<Resource> get(String uri, {Map<String, dynamic>? queryParams}) async {
    return _get(uri, false, queryParams);
  }

  Future<Resource> authorizedGet(String uri,
      {Map<String, dynamic>? queryParams}) async {
    return _handleAuthorizationError(() {
      return _get(uri, true, queryParams);
    });
  }

  Future<Resource> post(String uri, Map<String, dynamic> data) async {
    return _post(uri, false, data);
  }

  Future<Resource> authorizedPost(String uri, Map<String, dynamic> data) async {
    return _handleAuthorizationError(() {
      return _post(uri, true, data);
    });
  }

  Future<Resource> authorizedPut(String uri, Map<String, dynamic> data) async {
    return _handleAuthorizationError(() {
      return _getDataOrHandleDioError(() async {
        Options options = await _makeOptions(true);
        return _dio.put(
          _makeUrl(uri),
          data: data,
          options: options,
        );
      });
    });
  }

  Future<Resource> delete(String uri) async {
    return _getDataOrHandleDioError(() async {
      Options options = await _makeOptions(false);
      return _dio.delete(
        _makeUrl(uri),
        options: options,
      );
    });
  }

  Future<Resource> _get(
      String uri, bool tokenize, Map<String, dynamic>? queryParams) async {
    return _getDataOrHandleDioError(() async {
      Options options = await _makeOptions(tokenize);
      _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
      ));
      String url = _makeUrl(uri);
      return _dio.get(
        url,
        queryParameters: queryParams,
        options: options,
      );
    });
  }

  Future<Resource> _post(
      String uri, bool tokenize, Map<String, dynamic>? data) async {
    bool hasFile = data != null ? _processFiles(data) : false;

    logger.d("Data: $data");

    return _getDataOrHandleDioError(() async {
      Options options = await _makeOptions(tokenize);
      return _dio.post(
        _makeUrl(uri),
        data: hasFile ? FormData.fromMap(data) : data,
        options: options,
      );
    });
  }

  bool _processFiles(Map<String, dynamic> data) {
    bool hasFile = false;
    for (var key in data.keys) {
      if (data[key] is File) {
        File file = data[key];
        data[key] = MultipartFile.fromFileSync(file.path);
        hasFile = true;
      }
    }
    return hasFile;
  }

  Future<Resource> _handleAuthorizationError(Function func,
      {int retry = 1}) async {
    try {
      return await func();
    } on ApiException catch (e) {
      if (e.code != 401) rethrow;
      if (retry <= 0) throw UnauthorizedException(e.message);
      return _handleAuthorizationError(func, retry: --retry);
    }
  }

  Future<Resource> _getDataOrHandleDioError(Function func) async {
    try {
      final Response response = await func();
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        _logIfDebug(response);
        return Resource(response: response.data, messageCode: response.statusCode);
      } else if(response.statusCode == 401){
         throw UnauthorizedException(response.data['message']?? "unauthorized exception");
      } else if(response.statusCode == 500) {
        return Resource(response: response.data ?? {"message": "Internal Server Error"},
            message: 'Internal Server Error',
            messageCode: 500);
      } else {
        _logIfDebug(response);
        return Resource(
            status: ResourceStatus.failed,
            messageCode: response.statusCode,
            message: response.data['message']?? ""
        );
      }
    } on DioError catch (error) {
      logger.wtf(error, error.message, StackTrace.current);
      if (error.type == DioErrorType.sendTimeout) {
        throw Exception("Connection timeout exception");
      }
      if (error.type == DioErrorType.other){
        throw const SocketException("no internet");
      }
      if (error.response == null) {
        throw RepositoryUnavailableException(error.message);
      }
      return Resource(
        status: ResourceStatus.failed,
        message: error.error ?? error.toString(),
        response: error.response,
      );
    }
  }

  void _logIfDebug(Response response) {
    if (_config.isDebug){
      return;
    } else{
      logger.i(response.realUri.toString(),);
      logger.i(response.data,);
      logger.i(response.statusCode.toString(),
      );
    }
  }

  String _getErrorMessage(Response response) {
    String message = response.data['message'];
    return message;
  }

  String _makeUrl(String uri) {
    return uri;
    // if (uri.startsWith(_config.accountKitBaseUrl) ||
    //     uri.startsWith(_config.accountBaseUrl) ||
    //     uri.startsWith(_config.accountAuthBaseUrl)) {
    //   return uri;
    // } else if (uri.startsWith(Urls.baseUrl)) {
    //   return uri;
    // }

    // return '${_config.baseUrl.trimChar('/')}/${uri.trimChar('/')}';
  }

  Future<Options> _makeOptions(bool tokenize) async {
    var headers = generateHeader();

    // if (tokenize) {
    //   headers = await _addAuthHeader(headers);
    // }
    return Options(
        headers: headers,
        sendTimeout: 60 * 1000,
        receiveTimeout: 30000,
        followRedirects: false,
        validateStatus: (status) {
          return status! <= 500;
        });
  }

  Map<String, dynamic> generateHeader() {
    var header = {
      "Accept": "application/json",
      // 'portal-name': _config.portal-nametalName,
      'user-id': "",
      // 'User-Agent': _config.systemInfo,
      // 'version-code': _config.versionCode,
    };
    return header;
  }

  // Future<Map<String, dynamic>> _addAuthHeader(
  //     Map<String, dynamic> headers) async {
  //   var token =
  //       await _getToken(); /// after jwt mechanism set, comment this line
  //   /// var token = await PreferenceRepository.getUserJWT();
  //   headers["authorization"] = "Bearer ${token.toString()}";
  //   return headers;
  // }

  // Future<String?> _getToken() async {
  //   _token = await _cache.get(SharedPreferenceConstant.jwt);
  //   if (_token == null) throw ArgumentError.notNull("Token");
  //   return _token;
  // }
}
