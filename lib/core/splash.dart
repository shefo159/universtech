import 'package:get/get.dart';
import 'package:universtech/shared/components/pages/routes.dart';
import 'package:universtech/shared/network/local/pref.dart';

class SplashController extends GetxController {

  @override
  void onReady() {
    CashPref pref = Get.find<CashPref>();
    Future.delayed(const Duration(seconds: 4)).then((value){

      pref.getToken().then((value){
        if(pref.isLogin()){
          Get.offAllNamed(Routes.HOME);
        }else{
          Get.offAllNamed(Routes.GO_LOGIN);
        }
      });
    });
  }
}