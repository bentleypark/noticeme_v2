import 'dart:async';

import 'package:get/get.dart';
import 'package:noticeme/router/router.dart';

class SplashController extends GetxController {
  SplashController() {
    startTime();
  }

  moveToHome() async {
    Get.offNamed(Routers.HOME);
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return Timer(duration, moveToHome);
  }
}
