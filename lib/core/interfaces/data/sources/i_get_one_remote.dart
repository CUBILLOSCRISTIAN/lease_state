abstract interface class IGetOneRemote<T, Params> {
  Future<T> getOneRemote(Params params);
}
