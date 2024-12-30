import '../../../../../../core/services/service_http/i_http_client.dart';
import '../../../../domain/entities/login_response.dart';
import '../interfaces/i_auth_remote.dart';

class AuthRemote implements IAuthRemote {
  final IHttpClient _httpClient;

  AuthRemote({required IHttpClient httpClient}) : _httpClient = httpClient;

  @override
  Future<LoginResponse> login(String email, String password) async {
    try {
      final response = await _httpClient.post(
        'https://reqres.in/api/login',
        body: {
          'email': email,
          'password': password,
        },
      );

      return LoginResponse.fromJson(response);
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }
}
