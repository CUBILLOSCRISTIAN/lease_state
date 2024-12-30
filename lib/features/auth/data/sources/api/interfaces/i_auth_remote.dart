import '../../../../domain/entities/login_response.dart';

abstract interface class IAuthRemote {
  Future<LoginResponse> login(String email, String password);
}
