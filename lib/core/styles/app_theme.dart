import 'package:flutter/material.dart';

import 'custom_theme.dart';

class AppTheme {
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        colorScheme: kDarkColorScheme,
        useMaterial3: true,
        fontFamily: 'Roboto',
        splashColor: kDarkColorScheme.surface,
        highlightColor: kDarkColorScheme.surface,
        datePickerTheme: kDatePickerTheme(kDarkColorScheme),
        textTheme: kTextTheme(context, kDarkColorScheme),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: kDarkColorScheme.primaryContainer,
          selectionHandleColor: kDarkColorScheme.primaryContainer,
        ),
      );
}
