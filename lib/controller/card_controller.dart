import 'package:get/get.dart';
import 'package:job_finder/constants/images.dart';

class CardController extends GetxController {
  RxList<String> cardData = [
    JOBONE,
    JOBTWO,
    JOBTHREE,
    JOBFOUR,
  ].obs;
}
