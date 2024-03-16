import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'core/hive/init_hive.dart';
import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // INIT HIVE
  await initHive();
  // INIT INJECTOR
  di.init();

  runApp(const MyApp());
}
