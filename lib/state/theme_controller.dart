import "dart:math" as math;

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

final NotifierProvider<ColorNotifier, Color> colorProvider =
    NotifierProvider.autoDispose<ColorNotifier, Color>(
      ColorNotifier.new,
    );

class ColorNotifier extends Notifier<Color> {
  @override
  Color build() {
    return Colors.deepPurple;
  }

  void randomize() {
    final random = math.Random();
    final randomInt = random.nextInt(0xFFFFFFFF);
    final randomColor = Color(randomInt);
    state = randomColor;
  }

  void setToRed() {
    state = Colors.red;
  }

  void setToBlue() {
    state = Colors.blue;
  }

  void setToGreen() {
    state = Colors.green;
  }
}

final NotifierProvider<DarkModeNotifier, Brightness> darkModeProvider =
    NotifierProvider.autoDispose<DarkModeNotifier, Brightness>(
      DarkModeNotifier.new,
    );

class DarkModeNotifier extends Notifier<Brightness> {
  @override
  Brightness build() {
    return Brightness.light;
  }

  void toggle({required bool isDark}) {
    isDark ? _setToDark() : _setToLight();
  }

  void _setToDark() {
    state = Brightness.dark;
  }

  void _setToLight() {
    state = Brightness.light;
  }
}
