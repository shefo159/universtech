import 'package:get/get.dart';
import 'package:universtech/core/home.dart';
import 'package:universtech/core/inner/schedule.dart';
import 'package:universtech/shared/network/api/user/user.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleController(),fenix: true);
    Get.lazyPut(() => HomeController(),fenix: true);
    Get.put(UserApi(),permanent: true);
  }

}