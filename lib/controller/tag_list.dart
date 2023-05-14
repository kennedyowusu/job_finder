import 'package:get/get.dart';

class TagListController extends GetxController {
  RxInt selectedIndex = RxInt(-1);

  void changeSelected(int index) {
    selectedIndex.value = index;
  }

  RxList<String> tag = <String>[
    'All',
    'Design',
    'Development',
    'Marketing',
    'Finance',
    'Sales',
    'IT',
    'Other'
  ].obs;
}
