import '../../../user/domain/entities/user.dart';

class LoginResponse {
  final String accessToken;
  final int expirationDuration;
  final User user;

  LoginResponse({
    required this.accessToken,
    required this.expirationDuration,
    required this.user,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      accessToken: json['access_token'],
      expirationDuration: json['expirationDuration'],
      user: User.fromJson(json['user']),
    );
  }
}
