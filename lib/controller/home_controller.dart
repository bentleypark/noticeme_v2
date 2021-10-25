import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndex = 1;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  bool isHomeTap() {
    return tabIndex == 1;
  }
}
