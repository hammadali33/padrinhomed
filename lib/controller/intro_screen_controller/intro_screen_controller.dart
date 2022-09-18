import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/routes/routes.dart';
import 'package:padrinhomed/view/intro/intro_screen/steps/step1.dart';
import 'package:padrinhomed/view/intro/intro_screen/steps/step2.dart';
import 'package:padrinhomed/view/intro/intro_screen/steps/step3.dart';
import 'package:padrinhomed/view/intro/intro_screen/steps/step4.dart';
import 'package:padrinhomed/view/intro/intro_screen/steps/step5.dart';
import 'package:padrinhomed/view/intro/intro_screen/steps/step6.dart';
import 'package:padrinhomed/view/intro/intro_screen/steps/step8.dart';
import 'package:padrinhomed/view/intro/intro_screen/steps/step7.dart';
import 'package:padrinhomed/view/intro/intro_screen/steps/step9.dart';

class IntroScreenController extends GetxController {
  PageController pageController = PageController();
  RxInt currentStep = 0.obs;
  int selectedIndex = 0, selectedDegree = 0, selectedProgram = 0;
  bool isChecked = false;

  List steps = [
    const Step1(),
    const Step2(),
    const Step3(),
    const Step4(),
    const Step5(),
    const Step6(),
    const Step7(),
    const Step8(),
    const Step9(),
  ].obs;

  void updateCheckedBox() {
    isChecked = !isChecked;
    update();
  }

  void changeIndex(index) {
    currentStep.value = index;
    update();
  }

  void updateSelectedButton(index) {
    selectedIndex = index;
    update();
  }

  void updateSelectedProgram(index) {
    selectedProgram = index;
    update();
  }

  void updateSelectedDegree(index) {
    selectedDegree = index;
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
