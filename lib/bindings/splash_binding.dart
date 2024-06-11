import 'package:get/get.dart';
import 'package:universtech/core/splash.dart';
import 'package:universtech/shared/network/local/pref.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
    Get.put<CashPref>(CashPref(),permanent: true);
  }
}