import 'package:flutter/material.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StepperScreen extends StatelessWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 38),
      child: Column(
        children: [
          StepProgressIndicator(
            totalSteps: 10,
            currentStep: 5,
            size: 8,
            padding: 0,
            selectedColor: kTertiaryColor,
            unselectedColor: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
    ));
  }
}
