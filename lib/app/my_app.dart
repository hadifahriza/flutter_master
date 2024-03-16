import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../core/constants/constants.dart';
import '../core/styles/app_theme.dart';
import 'app_routes.dart';
import 'my_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: myAppProviders,
      child: ScreenUtilInit(
        designSize: const Size(393, 852), // define by mockup or design
        splitScreenMode: false,
        minTextAdapt: true,
        builder: (context, child) => MaterialApp.router(
          title: Constants.appName,
          routerConfig: AppRoutes.router,
          themeMode: ThemeMode.dark,
          theme: AppTheme.darkTheme(context),
          builder: (context, child) {
            final scale = ScreenUtil().scaleText.clamp(1.0, 1.3);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.linear(scale),
              ),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
