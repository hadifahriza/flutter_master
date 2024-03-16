import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/hive_model.dart/example_hive_model.dart';
import 'hive_key.dart';

@preResolve
Future<void> initHive() async {
  await Hive.initFlutter();
  // If you want to store other objects, you have to register a TypeAdapter
  // add part 'file_name.g.dart'; then
  // run flutter packages pub run build_runner build  --delete-conflicting-outputs

  // Register ExampleModelAdapter
  Hive.registerAdapter(ExampleHiveModelAdapter());

  // Open Box to store data
  await Hive.openBox(HiveKey.boxApp);
}
