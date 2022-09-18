import 'package:get/get.dart';
import 'package:padrinhomed/view/user/login.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.off(()=>
        const Login(),
        transition: Transition.downToUp,
        duration: const Duration(milliseconds: 800),
      ),
    );
    super.onInit();
  }
}
