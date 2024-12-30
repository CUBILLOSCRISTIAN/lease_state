abstract interface class IHttpClient {
  Future<Map<String, dynamic>> get(String url,
      {Map<String, dynamic>? queryParameters});
  Future<Map<String, dynamic>> post(String url, {Map<String, dynamic>? body});
}
