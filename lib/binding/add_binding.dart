import 'package:get/get.dart';
import 'package:noticeme/controller/add_detail_controller.dart';
import 'package:noticeme/controller/add_controller.dart';

class AddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddController>(() => AddController());
    Get.lazyPut<AddDetailController>(() => AddDetailController());
  }
}
