
import 'package:get/get.dart';

class AddController extends GetxController {

  List<String> list = ['칫솔', '칫약', '칫억'];
  List<String> filteredList = [];

  fetchFilteredList(String input)  {
    filteredList = list.where((element) => element.contains(input)).toList();
    print(filteredList.length);
    update();
  }
}