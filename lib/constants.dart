import 'dart:math';

import 'package:flutter/material.dart';

const String kNotesBox = 'noteBox';

class ColorUtils {
  static final List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.indigo,
    Colors.cyan,
  ];

  static Color getRandomColor() {
    final Random random = Random();
    final int index = random.nextInt(colorList.length);
    return colorList[index];
  }
}
