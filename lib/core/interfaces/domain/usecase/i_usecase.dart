import 'package:dartz/dartz.dart';
import 'package:lease_state/core/error/failures/failure.dart';

abstract interface class IUsecase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}
