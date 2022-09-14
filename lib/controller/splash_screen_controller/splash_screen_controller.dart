import 'package:get/get.dart';
import 'package:padrinhomed/routes/routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offNamed(AppLink.login),
    );
    super.onInit();
  }
}
