import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/core/splash.dart';


class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:Image.asset('assets/universtech-high-resolution-logo-transparent (2).png'),
      ),
    );
  }
}
