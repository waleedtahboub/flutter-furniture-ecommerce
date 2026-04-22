import 'package:flutter/material.dart';

extension StringColorExtension on String {
  Color toColor() {
    String hexColor = replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'ff$hexColor';
    }
    return Color(int.parse('0x$hexColor'));
  }
}
