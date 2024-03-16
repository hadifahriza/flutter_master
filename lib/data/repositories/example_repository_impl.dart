import '../../domain/entities/example.dart';
import '../../domain/repositories/example_repository.dart';
import '../../domain/usecases/example/get_example_usecase.dart';
import '../datasources/remote/example_remote_datasource.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  final ExampleRemoteDataSource remoteDataSource;
  ExampleRepositoryImpl(this.remoteDataSource);

  @override
  Future<Example> getExample(GetExampleUseCaseParams params) async {
    final result = await remoteDataSource.getExample(params);
    return result.toEntity();
  }
}
