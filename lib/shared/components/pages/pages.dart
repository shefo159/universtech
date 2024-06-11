import 'package:get/get.dart';
import 'package:universtech/bindings/auth_binding.dart';
import 'package:universtech/bindings/home_binding.dart';
import 'package:universtech/bindings/splash_binding.dart';
import 'package:universtech/modules/auth/go_login.dart';
import 'package:universtech/modules/auth/login.dart';
import 'package:universtech/modules/home_layout/edit_profile/edit_profile.dart';
import 'package:universtech/modules/home_layout/home/events/event.dart';
import 'package:universtech/modules/home_layout/home/events/event_view/event_view.dart';
import 'package:universtech/modules/home_layout/home_layout.dart';
import 'package:universtech/modules/splash.dart';
import 'package:universtech/shared/components/pages/routes.dart';

class AppPages{
  static const INITIAL_ROUTE=Routes.SPLASH;

  static List<GetPage> pages=[
    GetPage(name: Routes.SPLASH, page:()=>const SplashPage(),binding: SplashBinding() ),
    GetPage(name: Routes.GO_LOGIN, page:()=>const GoLoginPage() ),
    GetPage(name: Routes.LOGIN, page:()=> const LoginPage(),binding: AuthBinding()),
    GetPage(name: Routes.HOME, page:()=> const HomeLayout(),binding: HomeBinding() ),
    GetPage(name: Routes.EDIT_PROFILE, page:()=> const EditProfilePage() ),
    GetPage(name: Routes.EVENT, page:()=> const EventView() ),
  ];
}

