import 'package:dio/dio.dart';

import '../i_http_client.dart';

class DioHttpClientService implements IHttpClient {
  final Dio _dio;

  DioHttpClientService({required Dio dio}) : _dio = dio;

  @override
  Future<Map<String, dynamic>> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(url, queryParameters: queryParameters);
      return response.data;
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> post(String url,
      {Map<String, dynamic>? body}) async {
    try {
      final response = await _dio.post(url, data: body);
      return response.data;
    } catch (e) {
      throw Exception('Error posting data: $e');
    }
  }
}
