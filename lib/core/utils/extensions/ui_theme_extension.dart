import 'package:flutter/material.dart';

import '../../styles/sizes.dart';

TextStyle defaultTextStyle = TextStyle(
  fontSize: Sizes.sp14,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

extension UiThemeExtension on BuildContext {
  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge ?? defaultTextStyle;
  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium ?? defaultTextStyle;
  TextStyle get displaySmall => Theme.of(this).textTheme.displaySmall ?? defaultTextStyle;
  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge ?? defaultTextStyle;
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium ?? defaultTextStyle;
  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall ?? defaultTextStyle;
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge ?? defaultTextStyle;
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium ?? defaultTextStyle;
  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall ?? defaultTextStyle;
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge ?? defaultTextStyle;
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium ?? defaultTextStyle;
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall ?? defaultTextStyle;
  TextStyle get labelLarge => Theme.of(this).textTheme.labelLarge ?? defaultTextStyle;
  TextStyle get labelMedium => Theme.of(this).textTheme.labelMedium ?? defaultTextStyle;
  TextStyle get labelSmall => Theme.of(this).textTheme.labelSmall ?? defaultTextStyle;
}

extension GlobalKeyExtension on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject?.paintBounds != null) {
      final offset = Offset(translation.x, translation.y);
      return renderObject!.paintBounds.shift(offset);
    } else {
      return null;
    }
  }
}
