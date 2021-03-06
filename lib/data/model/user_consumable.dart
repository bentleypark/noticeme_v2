import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/resources/const.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class UserConsumable {
  int id = 0;

  String title;

  String category = "";

  String icon;

  String color;

  List<UserConsumableChild> child;

  UserConsumable(
    this.id,
    this.title,
    this.category,
    this.icon,
    this.color,
  );

  UserConsumable.short(this.title, this.icon, this.color, this.child);

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

  isGroup() {
    return child.length > 1;
  }
}

class UserConsumableChild {
  int id = 0;

  String title = '';

  int duration = 0;

  int starDate = 0;

  int endDate = 0;

  int alarmDate = 0;

  UserConsumableChild();

  UserConsumableChild.addNewItem(this.title, this.duration, this.starDate) {
    this.endDate = duration + starDate;
    this.alarmDate = endDate - ONE_DAY_MILLISECONDS;
  }
}
