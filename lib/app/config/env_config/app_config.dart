
import 'api_client_config.dart';

class AppConfig {
  static const String _prodEnvName = "production";
  static const String _devEnvName = "development";

  final String apiBaseUrl = 'https://5wlp8mae7e.execute-api.ap-northeast-1.amazonaws.com/';
  final String environment = _prodEnvName;
  final bool debug = false;

  static final _appConfig = AppConfig._internal();
  AppConfig._internal();

  bool isProduction() {
    return environment == _prodEnvName;
  }

  bool isDevelopment() {
    return environment == _devEnvName;
  }

  bool isDebug() {
    return debug;
  }

  bool isNotDebug() {
    return !debug;
  }

  ApiClientConfig getApiClientConfig() {
    return ApiClientConfig(
      baseUrl: apiBaseUrl,
      isDebug: debug,
    );
  }

  factory AppConfig() {
    return _appConfig;
  }
  loadData(Map<String, dynamic> map) {
    // apiBaseUrl = map['API_BASE_URL'];
    // debug = map['DEBUG'] == true;
  }
}

final AppConfig appConfig = AppConfig();
