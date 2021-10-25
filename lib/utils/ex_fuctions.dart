import 'dart:core';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:noticeme/resources/const.dart';

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

Size displaySize(BuildContext context) {
  debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayWidth(BuildContext context) {
  debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}

String convertDurationToDay(int duration) {
  return (duration / ONE_DAY_MILLISECONDS).toStringAsFixed(0) + '일';
}

int getCurrentDateTiMilliSeconds() {
  return DateTime.now().millisecondsSinceEpoch;
}
