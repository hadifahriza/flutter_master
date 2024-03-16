import 'package:go_router/go_router.dart';

import '../presentation/example_page/example_page.dart';
import '../presentation/splash_screen.dart';

class AppRoutes {
  const AppRoutes._();

  // Splash screens
  static const String kInitialRoute = '/';

  // Main Page
  static const String kExamplePage = '/example_page';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kInitialRoute,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kExamplePage,
        builder: (context, state) => const ExamplePage(),
      ),
    ],
  );
}
