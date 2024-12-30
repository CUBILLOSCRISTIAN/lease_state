import '../../../../core/interfaces/domain/repositories/i_get_list_repository.dart';
import '../../../../core/interfaces/domain/repositories/i_get_one_repository.dart';
import '../entities/user.dart';

abstract interface class IUserRepository
    implements IGetOneRepository<User, String>, IGetListRepository<User, Null> {
}
