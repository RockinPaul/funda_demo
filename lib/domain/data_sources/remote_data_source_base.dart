/// Base class for all API calls.
/// Provides ability to easily swap its implementation which is also useful
/// for unit testing.
abstract class RemoteDataSourceBase {
  Future<dynamic> get({required String endpoint});
}
