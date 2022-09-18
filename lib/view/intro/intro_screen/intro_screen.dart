import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/controller/intro_screen_controller/intro_screen_controller.dart';
import 'package:padrinhomed/widgets/custom_app_bar.dart';
import 'package:padrinhomed/widgets/my_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroScreenController>(
      init: IntroScreenController(),
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StepProgressIndicator(
                  totalSteps: controller.steps.length,
                  currentStep: controller.currentStep.value,
                  size: 8,
                  padding: 0,
                  selectedColor: kTertiaryColor,
                  unselectedColor: Colors.grey.withOpacity(0.5),
                ),
                controller.currentStep == 0 ||
                        controller.currentStep == 1 ||
                        controller.currentStep == 2
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child:
                            customBackButton(() => controller.previousStep()),
                      )
                    : const SizedBox(),
                Expanded(
                  child: PageView.builder(

                    controller: controller.pageController,
                    onPageChanged: (index) => controller.changeIndex(index),
                    itemCount: controller.steps.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (ctx, index) => Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: controller.currentStep == 4 ? 0 : 15),
                      child: controller.steps[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: controller.currentStep == 2
              ? const SizedBox()
              : BottomAppBar(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 15,
                    ),
                    child: MyButton(
                      buttonStatus: controller.currentStep == 4 ? false : true,
                      buttonText: controller.currentStep == 4
                          ? 'QUERO CONHECER MAIS'
                          : controller.currentStep == 8
                              ? 'FINALIZAR'
                              : 'CONTINUAR',
                      onTap: () => controller.nextStep(),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
