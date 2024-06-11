import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:universtech/shared/components/colors.dart';
import 'package:universtech/shared/components/config/scroll_config.dart';
import 'package:universtech/shared/components/pages/pages.dart';
import 'package:universtech/shared/components/pages/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        appBarTheme: const AppBarTheme(backgroundColor: white),
        useMaterial3: false,
      ),
      builder:(context, child){
        return ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: child!,
        );
      },
      initialRoute: Routes.SPLASH,
      getPages: AppPages.pages,
    );
  }
}
