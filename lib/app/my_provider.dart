import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../injection.dart';
import '../presentation/example_page/example_page_notifier.dart';
import '../presentation/global_notifiers/main_notifier.dart';

List<SingleChildWidget> myAppProviders = <SingleChildWidget>[
  ChangeNotifierProvider<MainNotifier>(
    create: (context) => getIt<MainNotifier>(),
  ),
  ChangeNotifierProvider<ExamplePageNotifier>(
    create: (context) => getIt<ExamplePageNotifier>(),
  ),
];
