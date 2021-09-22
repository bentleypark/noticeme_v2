import 'dart:core';
import 'dart:ui';

Color parseColor(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

extension ExtendedColor on String {
  Color parseColor() {
    final hexCode = this.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}

extension StringExt on String {
  static String createSomething() => "Some words";
}
