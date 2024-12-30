import 'package:lease_state/features/auth/domain/entities/login_response.dart';

import '../../../user/domain/entities/user.dart';

class LoginResponseModel extends LoginResponse {
  LoginResponseModel(
      {required super.accessToken,
      required super.expirationDuration,
      required super.user});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      accessToken: json['access_token'],
      expirationDuration: json['expirationDuration'],
      user: User.fromJson(json['user']),
    );
  }
}
