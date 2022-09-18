import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/controller/intro_screen_controller/intro_screen_controller.dart';
import 'package:padrinhomed/widgets/MyTextField.dart';
import 'package:padrinhomed/widgets/my_text.dart';
import 'package:padrinhomed/widgets/selection_button.dart';

class Step4 extends StatelessWidget {
  const Step4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroScreenController>(
        init: IntroScreenController(),
        builder: (controller) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              MyText(
                text: 'Vamos lá, então!',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                paddingBottom: 5,
              ),
              MyText(
                text:
                'Para começar, vamos te ajudar\na ser encontrado aqui no app:',
                fontSize: 18,
                textColor: kLightGreyColor,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const MyText(
                text: 'O que você quer ser?',
                textColor: kLightBlackColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              SelectionButton(
                buttonText: 'Afilhado',
                onTap: () => controller.updateSelectedButton(0),
                index: 0,
                selectedIndex: controller.selectedIndex,
              ),
              SelectionButton(
                buttonText: 'Padrinho',
                index: 1,
                selectedIndex: controller.selectedIndex,

                onTap: () => controller.updateSelectedButton(1),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField(
                labelText: 'Digite seu @ do Instagram',
                hintText: '@padrinho.med',
              ),
              const MyText(
                text:
                'Essa informação não é obrigatória ,mas ela torna mais fácil as pessoas te encontrarem aqui pelo app!',
                fontSize: 15,
                textColor: kLightGreyColor,
                paddingTop: 5,
              ),
            ],
          ),
          Container(),
          Container(),
        ],
      );
    });
  }
}
