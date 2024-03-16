import 'dart:io';

import 'package:fpdart/fpdart.dart';

import '../../../core/classes/exceptions.dart';
import '../../../core/classes/failure.dart';
import '../../../core/classes/usecase.dart';
import '../../../core/constants/warning_messages.dart';
import '../../entities/example.dart';
import '../../repositories/example_repository.dart';

class GetExampleUseCase extends UseCase<Example, GetExampleUseCaseParams> {
  final ExampleRepository repository;
  GetExampleUseCase(this.repository);

  @override
  Future<Either<Failure, Example>> call(GetExampleUseCaseParams params) async {
    try {
      final result = await repository.getExample(params);
      return Right(result);
    } on ServerExceptions catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(ConnectionFailure(WarningMessage.failedToConnectToNetwork));
    } catch (e) {
      return const Left(ServerFailure(WarningMessage.thereIsUnexpectedError));
    }
  }
}

class GetExampleUseCaseParams {
  final String? id;

  const GetExampleUseCaseParams({this.id});

  Map<String, dynamic> toJson() {
    return {
      "userId": id,
    };
  }
}
