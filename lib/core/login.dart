import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/shared/components/colors.dart';
import 'package:universtech/shared/components/pages/routes.dart';
import 'package:universtech/shared/network/api/auth/login.dart';

class LoginController extends GetxController{

  LoginApi api=Get.find<LoginApi>();
  Color containerColor(bool isProf){
    return isProf? darkBlue:lightBlue;
  }



  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  void loginClick(){
    if(emailController.text==null||emailController.text.isEmpty){
      Get.snackbar('Empty Field', 'Empty email, Please enter your email');
      return;
    }
    if(passwordController.text==null||passwordController.text.isEmpty){
      Get.snackbar('Empty Field', 'Empty password, Please enter your password');
      return;
    }
    Get.toNamed(Routes.HOME );
    //api.login(emailController.text,passwordController.text);
  }
}