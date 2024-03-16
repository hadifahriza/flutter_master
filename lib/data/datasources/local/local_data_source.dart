import '../../../core/hive/hive_manager.dart';
import '../../models/hive_model.dart/example_hive_model.dart';

abstract class LocalDataSource {
  // Token
  Future<void> deleteDataLocal();
  Future<ExampleHiveModel?> getDataLocal();
  Future<void> saveDataLocal(String token);
}

class LocalDataSourceImpl extends LocalDataSource {
  final HiveManager _hiveManager;

  LocalDataSourceImpl(this._hiveManager);

  // Token
  @override
  Future<void> deleteDataLocal() async {
    return await _hiveManager.deleteData();
  }

  @override
  Future<ExampleHiveModel?> getDataLocal() async {
    return await _hiveManager.getData();
  }

  @override
  Future<void> saveDataLocal(String token) async {
    return await _hiveManager.saveData(token);
  }
}
