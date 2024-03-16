import 'package:flutter/material.dart';

import '../../../core/styles/sizes.dart';

void showSnackbarDialog(
  BuildContext context,
  String text,
  SnackbarType type, {
  int durationInSeconds = 2,
}) {
  Color getBgColor() {
    switch (type) {
      case SnackbarType.success:
        return Colors.green;
      case SnackbarType.error:
        return const Color.fromARGB(255, 255, 72, 72);
      default:
        return Colors.blueGrey;
    }
  }

  if (context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: durationInSeconds),
      padding: EdgeInsets.symmetric(
        vertical: Sizes.height12,
        horizontal: Sizes.height24,
      ),
      content: Text(
        text,
        style: TextStyle(
          fontSize: Sizes.sp16,
          color: getBgColor().computeLuminance() > 0.5 ? Colors.black : Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: getBgColor(),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        bottom: Sizes.height28,
        left: Sizes.height12,
        right: Sizes.height12,
      ),
    ));
  }
}

enum SnackbarType {
  success,
  error,
  regular,
}
