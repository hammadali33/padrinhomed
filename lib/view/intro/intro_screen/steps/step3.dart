import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/controller/intro_screen_controller/intro_screen_controller.dart';
import 'package:padrinhomed/widgets/my_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Step3 extends StatelessWidget {
  const Step3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MyText(
              text: 'Perfeito!',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              paddingBottom: 5,
            ),
            MyText(
              text:
              'Agora, dentro de instantes\n,você receberá um e-mail com\num código de validação:',
              fontSize: 18,
              textColor: kLightGreyColor,
            ),
          ],
        ),
        _buildPinCodeTextField(context),
        Container(),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyText(
              text: 'Não recebeu o e-mail?',
              fontSize: 18,
              textColor: kDarkGreyColor,
              paddingBottom: 5,
            ),
            const MyText(
              text: 'Clique aqui',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        Container(),

      ],
    );
  }

  Widget _buildPinCodeTextField(BuildContext context) {
    return GetBuilder<IntroScreenController>(
        init: IntroScreenController(),
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyText(
                text: 'Código de validação',
                fontSize: 15,
                paddingBottom: 10,
              ),
              PinCodeTextField(
                keyboardType: TextInputType.number,
                appContext: context,
                onChanged: (val) {},
                length: 4,
                obscureText: false,
                textStyle: const TextStyle(
                  fontSize: 32,
                  color: kTertiaryColor,
                  fontWeight: FontWeight.bold,
                ),

                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderWidth: 1,
                  inactiveColor: const Color(0xff707070),
                  activeColor: kTertiaryColor,
                  borderRadius: BorderRadius.circular(14),
                  fieldHeight: Get.height * 0.14,
                  fieldWidth: Get.width * 0.2,
                  selectedColor: kTertiaryColor,
                ),
                animationDuration: const Duration(milliseconds: 300),
                // backgroundColor: Colors.blue.shade50,
                // enableActiveFill: true,
                onCompleted: (v) {
                  controller.nextStep();
                },
              ),
            ],
          );
        });
  }
}
