import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/hive_model.dart/example_hive_model.dart';
import 'hive_key.dart';

@lazySingleton
class HiveManager {
  final Box<dynamic> _box;

  HiveManager(this._box);

  // TOKEN ----------------------------------------
  Future<void> deleteData() async {
    await _box.delete(HiveKey.exampleKey);
  }

  Future<ExampleHiveModel?> getData() async {
    return await _box.get(HiveKey.exampleKey);
  }

  Future<void> saveData(String? token) async {
    await _box.put(HiveKey.exampleKey, token);
  }
}
