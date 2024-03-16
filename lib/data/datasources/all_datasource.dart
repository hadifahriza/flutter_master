import '../../injection.dart';
import 'local/local_data_source.dart';
import 'remote/example_remote_datasource.dart';

final allDataSource = [
  // Local
  getIt.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl(getIt())),
  // Remote
  getIt.registerLazySingleton<ExampleRemoteDataSource>(() => ExampleRemoteDataSourceImpl(getIt())),
];
