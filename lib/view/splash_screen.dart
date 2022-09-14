import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/app_images.dart';
import 'package:padrinhomed/controller/splash_screen_controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      init: SplashScreenController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Image.asset(
              kSplashIcon,
              height: 112,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
