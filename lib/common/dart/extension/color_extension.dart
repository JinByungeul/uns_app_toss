import 'dart:math' as math;

import 'package:uns_app_toss/uns_app.dart';
import 'package:uns_app_toss/common/dart/extension/context_extension.dart';
import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color getSwatchByBrightness(int swatchValue) {
    final Brightness brightness = UNSApp.navigatorKey.currentContext!.themeType.themeData.brightness;
    if (brightness == Brightness.light) {
      return swatchShade(swatchValue);
    } else {
      return swatchShade(swatchValue + 600);
    }
  }

  /// Get the shade of the color
  Color swatchShade(int swatchValue) =>
      HSLColor.fromColor(this).withLightness(1 - ((math.min(swatchValue, 1000)) / 1000)).toColor();
}
