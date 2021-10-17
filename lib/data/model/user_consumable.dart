import 'dart:ui';

import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class UserConsumable {
  int id = 0;

  String title;

  String category = "";

  String icon;

  String color;

  int duration = 0;

  int starDate = 0;

  int endDate = 0;

  int alarmDate = 0;

  UserConsumable(this.id, this.title, this.category, this.icon, this.color,
      this.duration, this.starDate, this.endDate, this.alarmDate);

  UserConsumable.short(this.title, this.icon, this.color);

  findColor() {
    switch (this.color) {
      case "red":
        return COLOR_RED_BLUE.parseColor();

      case "green":
        return COLOR_GREEN_ORANGE.parseColor();

      case "red":
        return COLOR_RED_BLUE.parseColor();

      case "yellow":
        return COLOR_YELLOW_PURPLE.parseColor();

      case "brown":
        return COLOR_BROWN_PINK.parseColor();

      case "blue":
        return COLOR_BLUE_RED.parseColor();
    }
  }
}
