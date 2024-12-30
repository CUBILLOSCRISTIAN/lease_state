import 'package:dartz/dartz.dart';
import 'package:lease_state/core/error/failures/auth_failure.dart';
import 'package:lease_state/core/error/failures/failure.dart';
import 'package:lease_state/features/auth/data/sources/api/interfaces/i_auth_remote.dart';
import 'package:lease_state/features/auth/domain/entities/login_response.dart';
import 'package:lease_state/features/auth/domain/repositories/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final IAuthRemote _authRemote;

  AuthRepository({required IAuthRemote authRemote}) : _authRemote = authRemote;

  @override
  Future<Either<Failure, LoginResponse>> login(
      String email, String password) async {
    try {
      final response = await _authRemote.login(email, password);
      return Right(response);
    } catch (e) {
      return Left(AuthFailure('Error fetching data: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
