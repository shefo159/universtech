import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CashPref extends GetxController {
  String? token;
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
  }
  void setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }
  bool isLogin() {
    return token != null;
  }

  Future<void> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    this.token=token;
  }
  void clearToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    token = null;
  }
}