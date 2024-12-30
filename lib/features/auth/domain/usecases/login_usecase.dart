import 'package:dartz/dartz.dart';
import 'package:lease_state/core/error/failures/failure.dart';
import 'package:lease_state/core/interfaces/domain/usecase/i_usecase.dart';
import 'package:lease_state/features/auth/domain/entities/login_response.dart';
import 'package:lease_state/features/auth/domain/repositories/i_auth_repository.dart';

class LoginUsecase implements IUsecase<LoginResponse, Tuple2<String, String>> {
  final IAuthRepository _repository;

  LoginUsecase(this._repository);

  @override
  Future<Either<Failure, LoginResponse>> call(
      Tuple2<String, String> params) async {
    return await _repository.login(params.value1, params.value2);
  }
}
