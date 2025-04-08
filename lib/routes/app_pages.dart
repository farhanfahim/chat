import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../app/modules/splash/bindings/splash_binding.dart';
import '../app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;
  static final routes = [

    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      children: [
        GetPage(
          name: _Paths.SPLASH,
          page: () => SplashView(),
          binding: SplashBinding(),
          transition: Transition.native,
        ),
      ],
    ),

  ];
}
