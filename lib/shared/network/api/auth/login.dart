import 'package:get/get.dart';
  import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:universtech/shared/components/pages/routes.dart';
import 'package:universtech/shared/network/local/pref.dart';

class LoginApi extends GetxController {
  CashPref pref = Get.find<CashPref>();

  Future<void> login(String email, String password) async {
    var url = 'http://192.168.1.12:8000/api/auth/login'; // replace with your login API url
    var response = await http.post(
      Uri.parse(url),
      body: {
        'email': email,
        'password': password,
      },
      headers: {
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      // handle the data as needed, e.g. save the token, navigate to another screen, etc.
      pref.setToken(data['data']['token']);
      Get.offAllNamed(Routes.HOME);
    } else {
      // handle the error, e.g. show a message to the user
      var data = jsonDecode(response.body);
      Get.snackbar('Failed to login', data['message'],duration: const Duration(seconds: 3));
    }
  }


}

