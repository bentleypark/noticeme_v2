import 'package:get/get.dart';
import 'package:noticeme/controller/manage_controller.dart';
import 'package:noticeme/presentation/manage/notification_controller.dart';

class ManageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManageController>(() => ManageController());
    Get.lazyPut<NotificationController>(() => NotificationController());
  }
}
