import 'package:dartz/dartz.dart';
import 'package:lease_state/core/error/failures/failure.dart';
import 'package:lease_state/core/interfaces/domain/usecase/i_usecase.dart';
import 'package:lease_state/features/auth/domain/repositories/i_auth_repository.dart';

class LogoutUsecase implements IUsecase<Unit, Null> {
  final IAuthRepository _repository;

  LogoutUsecase(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Null params) async {
    return await _repository.logout();
  }
}
