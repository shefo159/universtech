import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/core/home.dart';
import 'package:universtech/core/login.dart';
import 'package:universtech/shared/components/app_widget.dart';
import 'package:universtech/shared/components/colors.dart';
import 'package:universtech/shared/components/pages/routes.dart';
import 'package:universtech/shared/network/api/auth/login.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    Get.lazyPut(() => HomeController(), fenix: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 85.0),
              child: Image.asset(
                  'assets/universtech-high-resolution-logo-transparent (2).png'),
            ),
            const SizedBox(
              height: 50,
            ),
            //
            Container(
              width: width,
              margin:  EdgeInsetsDirectional.symmetric(horizontal: width / 10),
              decoration:  BoxDecoration(
                  color: blue,
                  borderRadius:
                  BorderRadius.circular(8.5),
              ),
              padding: const EdgeInsets.symmetric(
                   vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  LoginTextFormField(
                      controller: controller.emailController,
                      textType: TextInputType.emailAddress),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  LoginTextFormField(
                    controller: controller.passwordController,
                    textType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Forget password?..',
                    style: TextStyle(color: lightgrey, fontSize: 10),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 40,
              width: width,
              margin: EdgeInsetsDirectional.symmetric(horizontal: width / 3),
              child: ElevatedButton(
                onPressed: controller.loginClick,
                style: ElevatedButton.styleFrom(
                    backgroundColor: orange,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                ),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
