import 'package:flutter/material.dart';

import '../../core/utils/extensions/ui_theme_extension.dart';
import 'color_palettes.dart';
import 'sizes.dart';

const kDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: ColorPalettes.primary, // Refresh Indicator, Focus border textfield
  background: ColorPalettes.primary, // Background, Background Refresh Indicator,
  inversePrimary: ColorPalettes.primary,
  onPrimaryContainer: ColorPalettes.onPrimary, // FAB Text
  onPrimary: ColorPalettes.onPrimary,
  onSecondary: ColorPalettes.onPrimary,
  onTertiary: ColorPalettes.onPrimary,
  onError: ColorPalettes.onPrimary,
  onSurface: ColorPalettes.onPrimary, // Text, AppBar Text
  onSurfaceVariant: ColorPalettes.onPrimary, // Label date range
  // primaryContainer: ColorPalettes.primaryContainer, // FAB, Active color
  surface: ColorPalettes.surface, // AppBar
  // inverseSurface: ColorPalettes.surface,
  // secondaryContainer: ColorPalettes.secondaryContainer, // View more button
  // tertiaryContainer: ColorPalettes.secondaryContainer,
  // onSecondaryContainer: ColorPalettes.onSecondaryContainer, // Background container for widgets
  // onTertiaryContainer: ColorPalettes.onSecondaryContainer,
  // surfaceVariant: ColorPalettes.lavenderMist,
  // onInverseSurface: ColorPalettes.lavenderMist,
  secondary: ColorPalettes.mediumPersianBlue,
  // tertiary: ColorPalettes.astronautBlue,
  error: ColorPalettes.guardsmanRed,
  // errorContainer: ColorPalettes.peachSchnapps,
  // onErrorContainer: ColorPalettes.deepBrown,
  onBackground: ColorPalettes.hawkesBlue,
  // outline: ColorPalettes.davyGrey,
  // surfaceTint: ColorPalettes.transparent, // When app bar scroll
  // outlineVariant: ColorPalettes.primaryContainer, // Divider date picker
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
);

DatePickerThemeData kDatePickerTheme(ColorScheme colorScheme) => DatePickerThemeData(
      surfaceTintColor: Colors.transparent, // date range picker
      dayBackgroundColor: MaterialStatePropertyAll(colorScheme.primaryContainer), // Selected start end date
      headerForegroundColor: colorScheme.onPrimary, // date range text
      dayForegroundColor: MaterialStatePropertyAll(colorScheme.onPrimary), // Text selected start end date
      backgroundColor: colorScheme.surface,
      headerBackgroundColor: colorScheme.surface, // Header range date popup
      rangePickerBackgroundColor: colorScheme.surface, // Background calendar
      rangeSelectionOverlayColor: MaterialStatePropertyAll(colorScheme.primaryContainer.withOpacity(0.5)), // Selected background
      rangeSelectionBackgroundColor: colorScheme.primaryContainer.withOpacity(0.5), // Selected background
      rangePickerSurfaceTintColor: colorScheme.primaryContainer.withOpacity(0.5),
      rangePickerShadowColor: colorScheme.primaryContainer.withOpacity(0.5), // range selected
      // dayOverlayColor: MaterialStatePropertyAll(ColorPalettes.lavaRed), // Splash when select date
      rangePickerHeaderBackgroundColor: colorScheme.surface, // Header calendar
      rangePickerHeaderForegroundColor: colorScheme.onPrimary, // Header calendar text
      // shadowColor: ColorPalettes.butterflyBlue, // shadow range date popup
      // rangePickerHeaderHelpStyle: TextStyle(color: Colors.green), // Text selected date info
      // rangePickerHeaderHeadlineStyle: TextStyle(color: Colors.greenAccent), // Text selected date info
      rangePickerShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        side: BorderSide.none,
      ),
    );

TextTheme kTextTheme(BuildContext context, ColorScheme colorScheme) => TextTheme(
      displayLarge: context.displayLarge.copyWith(
        fontSize: Sizes.sp57,
        color: colorScheme.onPrimary,
      ),
      displayMedium: context.displayMedium.copyWith(
        fontSize: Sizes.sp45,
        color: colorScheme.onPrimary,
      ),
      displaySmall: context.displaySmall.copyWith(
        fontSize: Sizes.sp36,
        color: colorScheme.onPrimary,
      ),
      headlineLarge: context.headlineLarge.copyWith(
        fontSize: Sizes.sp32,
        color: colorScheme.onPrimary,
      ),
      headlineMedium: context.headlineMedium.copyWith(
        fontSize: Sizes.sp28,
        color: colorScheme.onPrimary,
      ),
      headlineSmall: context.headlineSmall.copyWith(
        fontSize: Sizes.sp24,
        color: colorScheme.onPrimary,
      ),
      titleLarge: context.titleLarge.copyWith(
        fontSize: Sizes.sp22,
        color: colorScheme.onPrimary,
      ),
      titleMedium: context.titleMedium.copyWith(
        fontSize: Sizes.sp16,
        color: colorScheme.onPrimary,
      ),
      titleSmall: context.titleSmall.copyWith(
        fontSize: Sizes.sp14,
        color: colorScheme.onPrimary,
      ),
      bodyLarge: context.bodyLarge.copyWith(
        fontSize: Sizes.sp16,
        color: colorScheme.onPrimary,
      ),
      bodyMedium: context.bodyMedium.copyWith(
        fontSize: Sizes.sp14,
        color: colorScheme.onPrimary,
      ),
      bodySmall: context.bodySmall.copyWith(
        fontSize: Sizes.sp12,
        color: colorScheme.onPrimary,
      ),
      labelLarge: context.labelLarge.copyWith(
        fontSize: Sizes.sp14,
        color: colorScheme.onPrimary,
      ),
      labelMedium: context.labelMedium.copyWith(
        fontSize: Sizes.sp12,
        color: colorScheme.onPrimary,
      ),
      labelSmall: context.labelSmall.copyWith(
        fontSize: Sizes.sp11,
        color: colorScheme.onPrimary,
      ),
    );
