import 'package:get/get.dart';

class NotificationController extends GetxController {
  var isVisible = true;

  void dismiss() {
    isVisible = false;
    update();
  }
}
