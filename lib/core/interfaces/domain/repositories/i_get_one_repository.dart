import 'package:dartz/dartz.dart';

import '../../../error/failures/failure.dart';

abstract interface class IGetOneRepository<T, Params> {
  Future<Either<Failure, T>> getOne(Params params);
}
