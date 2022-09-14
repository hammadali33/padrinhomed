import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/routes/routes.dart';
import 'package:padrinhomed/view/stepper_screen/steps/Step4.dart';
import 'package:padrinhomed/view/stepper_screen/steps/step1.dart';
import 'package:padrinhomed/view/stepper_screen/steps/step2.dart';
import 'package:padrinhomed/view/stepper_screen/steps/step3.dart';

class StepperScreenController extends GetxController {
  PageController pageController = PageController();
  RxInt currentStep = 0.obs;

  List steps = [
    const Step1(),
    const Step2(),
    const Step3(),
    const Step4(),
  ].obs;

  void changeIndex(index) {
    currentStep.value = index;
    update();
  }

  void nextStep() {
    if (currentStep != steps.length - 1) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
    } else {
      Get.toNamed(AppLink.loading);
    }
    update();
  }

  void previousStep() {
    if (currentStep != 0) {
      pageController.previousPage(
          duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
    } else {
      Get.offNamed(AppLink.login);
    }
  }
}
