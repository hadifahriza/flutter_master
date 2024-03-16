import 'package:dio/dio.dart';
import 'package:flutter_master/data/datasources/all_datasource.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/constants/constants.dart';
import 'core/hive/hive_key.dart';
import 'core/hive/hive_manager.dart';
import 'core/utils/interceptor/dio_interceptor.dart';
import 'data/repositories/example_repository_impl.dart';
import 'domain/repositories/example_repository.dart';
import 'domain/usecases/example/example_usecase.dart';
import 'presentation/global_notifiers/all_notifier.dart';

final getIt = GetIt.instance;

void init() {
  // Others ---------------------------------
  getIt.registerLazySingleton<Box<dynamic>>(() => Hive.box(HiveKey.boxApp));
  getIt.registerLazySingleton<HiveManager>(() => HiveManager(getIt()));

  // NOTIFIER ---------------------------------
  allNotifier;

  // USECASE ---------------------------------
  exampleUsecases;

  // REPOSITORY ---------------------------------
  getIt.registerLazySingleton<ExampleRepository>(() => ExampleRepositoryImpl(getIt()));

  // DATASOURCE ---------------------------------
  allDataSource;

  // EXTERNAL ---------------------------------
  final Dio dio = Dio(BaseOptions(
    connectTimeout: const Duration(
      milliseconds: Constants.timeoutInMillisecond,
    ),
    receiveTimeout: const Duration(
      milliseconds: Constants.timeoutInMillisecond,
    ),
    sendTimeout: const Duration(
      milliseconds: Constants.timeoutInMillisecond,
    ),
  ));
  dio.interceptors.add(DioInterceptors());

  getIt.registerLazySingleton<Dio>(() => dio);
}
