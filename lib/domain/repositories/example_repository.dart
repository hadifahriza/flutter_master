import '../entities/example.dart';
import '../usecases/example/get_example_usecase.dart';

abstract class ExampleRepository {
  Future<Example> getExample(GetExampleUseCaseParams params);
}
