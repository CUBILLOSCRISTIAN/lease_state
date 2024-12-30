abstract interface class IGetListRemote<T, Params> {
  Future<List<T>> getListRemote(Params params);
}
