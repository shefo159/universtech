import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/core/login.dart';
import 'package:universtech/shared/components/colors.dart';
import 'package:universtech/shared/components/pages/routes.dart';

class GoLoginPage extends StatelessWidget {
  const GoLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginController(), fenix: true);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(flex: 4, child: SizedBox()),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 60, vertical: 38),
            child: Image.asset(
                'assets/universtech-high-resolution-logo-transparent (2).png'),
          ),
          SizedBox(
            width: Get.width - 150,
            height: 45,
            child: ElevatedButton(
              onPressed: () => Get.toNamed(Routes.LOGIN),
              style: ElevatedButton.styleFrom(
                  backgroundColor: darkBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text(
                'LOG IN',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
          ),
          const Expanded(flex: 3, child: SizedBox()),
          const Padding(
            padding: EdgeInsetsDirectional.only(bottom: 40),
            child: Text(
              'Help!',
              style: TextStyle(color: grey, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
