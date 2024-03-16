import '../../injection.dart';
import '../example_page/example_page_notifier.dart';
import 'main_notifier.dart';

final allNotifier = [
  getIt.registerFactory(() => MainNotifier()),
  getIt.registerFactory(() => ExamplePageNotifier(
        getIt(),
      )),
];
