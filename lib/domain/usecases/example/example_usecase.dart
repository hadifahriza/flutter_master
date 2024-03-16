import '../../../injection.dart';
import 'get_example_usecase.dart';

final exampleUsecases = [
  getIt.registerLazySingleton(() => GetExampleUseCase(getIt())),
];
