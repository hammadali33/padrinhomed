import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/controller/stepper_screen_controller/stepper_screen_controller.dart';
import 'package:padrinhomed/widgets/custom_app_bar.dart';
import 'package:padrinhomed/widgets/my_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StepperScreen extends StatelessWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StepperScreenController>(
        init: StepperScreenController(),
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 38),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: customBackButton(() => controller.previousStep()),
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: controller.pageController,
                      onPageChanged: (index) => controller.changeIndex(index),
                      itemCount: controller.steps.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (ctx, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: controller.steps[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                child: MyButton(
                    buttonStatus: true,
                    buttonText: 'CONTINUAR',
                    onTap: () => controller.nextStep()),
              ),
            ),
          );
        });
  }
}
