import 'package:flutter/material.dart';

class ColorPalettes {
  const ColorPalettes._();

  static const firefly = Color(_primaryDarkValue);
  static const _primaryDarkValue = 0xff09223B; // firefly

  // Main Custom Color
  static const primary = firefly; // Background
  static const onPrimary = paleGrey; // Text color
  static const primaryContainer = butterflyBlue; // FAB, Active color
  static const surface = blueWhale; // AppBar
  static const secondaryContainer = denimBlue; // Text button
  static const onSecondaryContainer = marine; // Background container

  static const blueWhale = Color(0xff0B2B4B);
  static const butterflyBlue = Color(0xff3EA1F1);
  static const denimBlue = Color(0xff71B5FB);
  static const hawkesBlue = Color(0xffD6E3FF);
  static const marine = Color(0xff0E365D); // Background Bottom Sheet
  static const mediumPersianBlue = Color(0xFF0064B1);

  static const guardsmanRed = Color(0xffC20002); // Error
  static const peachSchnapps = Color(0xFFFFDAD6); // Error container
  static const deepBrown = Color(0xff410002); // On error container

  static const paleGrey = Color(0xffFBFDFE);

  static const primaryDarkSwatch = MaterialColor(
    _primaryDarkValue,
    <int, Color>{
      50: Color(_primaryDarkValue),
      100: Color(_primaryDarkValue),
      200: Color(_primaryDarkValue),
      300: Color(_primaryDarkValue),
      400: Color(_primaryDarkValue),
      500: Color(_primaryDarkValue),
      600: Color(_primaryDarkValue),
      700: Color(_primaryDarkValue),
      800: Color(_primaryDarkValue),
      900: Color(_primaryDarkValue),
    },
  );

  // Gradient
  static const linearGradientRainbow = LinearGradient(
    colors: [
      Color(0xFF4792F2),
      Color(0xFF65DB7C),
      Color(0xFFF5E753),
      Color(0xFFE63A52),
      Color(0xFF75212D),
    ],
  );
}

// All hex value from 100% to 0% alpha:
// 100% — FF
// 99% — FC
// 98% — FA
// 97% — F7
// 96% — F5
// 95% — F2
// 94% — F0
// 93% — ED
// 92% — EB
// 91% — E8
// 90% — E6
// 89% — E3
// 88% — E0
// 87% — DE
// 86% — DB
// 85% — D9
// 84% — D6
// 83% — D4
// 82% — D1
// 81% — CF
// 80% — CC
// 79% — C9
// 78% — C7
// 77% — C4
// 76% — C2
// 75% — BF
// 74% — BD
// 73% — BA
// 72% — B8
// 71% — B5
// 70% — B3
// 69% — B0
// 68% — AD
// 67% — AB
// 66% — A8
// 65% — A6
// 64% — A3
// 63% — A1
// 62% — 9E
// 61% — 9C
// 60% — 99
// 59% — 96
// 58% — 94
// 57% — 91
// 56% — 8F
// 55% — 8C
// 54% — 8A
// 53% — 87
// 52% — 85
// 51% — 82
// 50% — 80
// 49% — 7D
// 48% — 7A
// 47% — 78
// 46% — 75
// 45% — 73
// 44% — 70
// 43% — 6E
// 42% — 6B
// 41% — 69
// 40% — 66
// 39% — 63
// 38% — 61
// 37% — 5E
// 36% — 5C
// 35% — 59
// 34% — 57
// 33% — 54
// 32% — 52
// 31% — 4F
// 30% — 4D
// 29% — 4A
// 28% — 47
// 27% — 45
// 26% — 42
// 25% — 40
// 24% — 3D
// 23% — 3B
// 22% — 38
// 21% — 36
// 20% — 33
// 19% — 30
// 18% — 2E
// 17% — 2B
// 16% — 29
// 15% — 26
// 14% — 24
// 13% — 21
// 12% — 1F
// 11% — 1C
// 10% — 1A
// 9% — 17
// 8% — 14
// 7% — 12
// 6% — 0F
// 5% — 0D
// 4% — 0A
// 3% — 08
// 2% — 05
// 1% — 03
// 0% — 00
