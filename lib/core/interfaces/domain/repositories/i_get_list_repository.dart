import 'package:dartz/dartz.dart';

import '../../../error/failures/failure.dart';

abstract interface class IGetListRepository<T, Params> {
  Future<Either<Failure, List<T>>> getList(Params params);
}
