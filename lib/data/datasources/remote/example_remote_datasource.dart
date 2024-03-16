import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/classes/exceptions.dart';
import '../../../core/constants/warning_messages.dart';
import '../../../domain/usecases/example/get_example_usecase.dart';
import '../../models/example_model.dart';
import '../api_url.dart';

abstract class ExampleRemoteDataSource {
  Future<ExampleModel> getExample(GetExampleUseCaseParams params);
}

class ExampleRemoteDataSourceImpl implements ExampleRemoteDataSource {
  final Dio client;
  ExampleRemoteDataSourceImpl(this.client);

  @override
  Future<ExampleModel> getExample(GetExampleUseCaseParams params) async {
    try {
      final response = await client.post(
        APIUrl.baseUrl,
        data: jsonEncode(params.toJson()),
      );
      final Map<String, dynamic> responseData = response.data;

      final data = ExampleModel.fromJson(responseData);

      return data;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        throw ServerExceptions(WarningMessage.somethingWentWrong);
      } else if (e.type == DioExceptionType.unknown && e.message!.contains("SocketException")) {
        throw const SocketException('');
      } else {
        throw ServerExceptions(WarningMessage.somethingWentWrong);
      }
    } on FormatException catch (e) {
      throw FormatException(e.message);
    } catch (e) {
      throw ServerExceptions(WarningMessage.somethingWentWrong);
    }
  }
}
