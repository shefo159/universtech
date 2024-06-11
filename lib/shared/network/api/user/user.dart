import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:universtech/models/user_model.dart';
import 'package:universtech/shared/network/local/pref.dart';
import 'package:get/get.dart';

class UserApi extends GetxController {
  CashPref pref = Get.find<CashPref>();


  Future<UserModel> getUserData() async {
    var url = 'http://192.168.1.12:8000/api/user?'; // replace with your user API url
    var token = pref.token;

    var response = await http.get(
      Uri.parse(url),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return UserModel.fromJson(data);
    } else {
      // handle the error, e.g. show a message to the user
      var data = jsonDecode(response.body);
      Get.snackbar('Failed to get user data', data['message'], duration: const Duration(seconds: 3));
      throw Exception('Failed to load user data');
    }
  }

  Future<void> updateUserName({required String newName}) async {
    var url = 'http://192.168.1.12:8000/api/user'; // replace with your user API url
    var token = pref.token;

    var response = await http.put(
      Uri.parse(url),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: {
        'name': newName,
      },
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      // handle the data as needed, e.g. update the user model, show a success message, etc.
    } else {
      // handle the error, e.g. show a message to the user
      var data = jsonDecode(response.body);
      Get.snackbar('Failed to update user name', data['message'],
          duration: const Duration(seconds: 3));
      throw Exception('Failed to update user name');
    }
  }

  Future<void> updateUserPhoneNumber({required String newPhoneNumber}) async {
    var url = 'http://192.168.1.12:8000/api/user'; // replace with your user API url
    var token = pref.token;

    var response = await http.put(
      Uri.parse(url),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: {
        'phone': newPhoneNumber,
      },
    );
    if (response.statusCode == 200) {

      var data = jsonDecode(response.body);
      // handle the data as needed, e.g. update the user model, show a success message, etc.
    } else {
      // handle the error, e.g. show a message to the user
      var data = jsonDecode(response.body);
      Get.snackbar('Failed to update user name', data['message'],
          duration: const Duration(seconds: 3));
      throw Exception('Failed to update user name');
    }
  }

  Future<void> logout() async {
    //todo check if the url is correct
    var url = 'http://192.168.1.12:8000/api/logout'; // replace with your logout API url
    var token = pref.token;

    var response = await http.post(
      Uri.parse(url),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      // handle the data as needed, e.g. clear the token, navigate to login screen, etc.
      pref.clearToken();
    } else {
      // handle the error, e.g. show a message to the user
      var data = jsonDecode(response.body);
      Get.snackbar('Failed to logout', data['message'], duration: const Duration(seconds: 3));
      throw Exception('Failed to logout');
    }
  }
}