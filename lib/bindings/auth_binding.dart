import 'package:get/get.dart';
import 'package:universtech/core/login.dart';
import 'package:universtech/shared/network/api/auth/login.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(),fenix: true);
    Get.put<LoginApi>(LoginApi(),permanent: true);
  }
}
