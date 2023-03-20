class ApiClientConfig {

  final String baseUrl;
  final bool isDebug;

  // ApiClientConfig(this.baseUrl, this.isDebug, this.versionCode, this.systemInfo,
  //     this.portalName, this.accountBaseUrl, this.accountAppId, this.accountKitBaseUrl, this.privacyPolicy);
  ApiClientConfig({required this.baseUrl, required this.isDebug});


  bool get isNotDebug {
    return !isDebug;
  }
}
