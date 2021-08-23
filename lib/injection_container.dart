import 'package:funda_demo/domain/data_sources/remote_data_source_base.dart';
import 'package:funda_demo/domain/repositories/repository_base.dart';
import 'package:funda_demo/infrastructure/repositories/repository.dart';
import 'package:funda_demo/infrastructure/services/api_service.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

// Service locator instance
final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<RepositoryBase>(() => Repository(remoteDataSource: sl()));
  sl.registerLazySingleton<RemoteDataSourceBase>(() => ApiService(client: sl()));
  sl.registerLazySingleton(() => http.Client());
}