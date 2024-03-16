import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app/app_routes.dart';
import '../core/constants/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Image logoImage;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await flow();
    });
  }

  Future<void> flow() async {
    await Future.delayed(
      const Duration(milliseconds: Constants.timeoutInMillisecond),
    ).then(
      (_) => context.pushReplacement(AppRoutes.kExamplePage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Screens'),
      ),
    );
  }
}
