import 'package:get/get.dart';

class ScheduleController extends GetxController {
  int? dropdownValue;

  void dropdownChange(int value) {
    dropdownValue = value;
    update();
  }
}
