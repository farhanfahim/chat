import 'package:get/get.dart';
import 'package:chat/app/modules/splash/view_model/splash_view_model.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashViewModel>(
      () => SplashViewModel(),
    );
  }
}
