import 'package:flutter/material.dart';

extension ColorExtension on Paint {
  /// Hides the paint's color, if strokeWidth is zero
  void transparentIfWidthIsZero() {
    if (strokeWidth == 0) {
      shader = null;
      if (color == null) {
        color = Colors.transparent;
      } else {
        color = color.withOpacity(0.0);
      }
    }
  }
}
