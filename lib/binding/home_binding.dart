
import 'package:get/get.dart';
import 'package:noticeme/controller/home_controller.dart';
import 'package:noticeme/controller/manage_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ManageController>(() => ManageController());
  }
}