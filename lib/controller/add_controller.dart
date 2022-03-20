import 'package:get/get.dart';
import 'package:noticeme/router/router.dart';

class AddController extends GetxController {
  List<String> list = ['칫솔', '칫약', '칫억'];
  var filteredList = <String>[];

  fetchFilteredList(String input) async {
    filteredList = list.where((element) => element.contains(input)).toList();
    print(filteredList.length);
    update();
  }

  moveToDetail() async {
    Get.offNamed(Routers.ADD_DETAIL);
  }

  moveToHome() async {
    Get.offNamed(Routers.HOME);
  }
}
