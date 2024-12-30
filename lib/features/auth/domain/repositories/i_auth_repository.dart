import 'package:dartz/dartz.dart';
import 'package:lease_state/features/auth/domain/entities/login_response.dart';

import '../../../../core/error/failures/failure.dart';

abstract interface class IAuthRepository {
  Future<Either<Failure, LoginResponse>> login(String email, String password);
  Future<Either<Failure, Unit>> logout();
}
