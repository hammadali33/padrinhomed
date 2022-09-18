import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/controller/intro_screen_controller/intro_screen_controller.dart';
import 'package:padrinhomed/widgets/my_text.dart';
import 'package:padrinhomed/widgets/selection_button.dart';

class Step9 extends StatelessWidget {
  const Step9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroScreenController>(
      builder: (controller) {
        return ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const MyText(
              text: 'Agora pra fechar…',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              paddingBottom: 5,
            ),
            const MyText(
              text: 'Selecione todos os programas que você quer participar:',
              fontSize: 18,
              textColor: kLightGreyColor,
            ),
            const SizedBox(
              height: 40,
            ),
            SelectionButton(
              buttonText: 'Posts para\nRedes Sociais',
              height: 68,
              index: 0,
              selectedIndex: controller.selectedProgram,
              onTap: () => controller.updateSelectedProgram(0),
            ),
            SelectionButton(
              buttonText: 'Discussão de Casos\nClínicos e Aulas',
              height: 68,
              index: 1,
              selectedIndex: controller.selectedProgram,
              onTap: () => controller.updateSelectedProgram(1),
            ),
            SelectionButton(
              buttonText: 'Trabalhos\nCientíficos',
              height: 68,
              index: 2,
              selectedIndex: controller.selectedProgram,
              onTap: () => controller.updateSelectedProgram(2),
            ),
            SelectionButton(
              buttonText: 'Mentoria sobre\nCarreira Médica',
              height: 68,
              index: 3,
              selectedIndex: controller.selectedProgram,
              onTap: () => controller.updateSelectedProgram(3),
            ),
            SelectionButton(
              buttonText: 'Acompanhar Rotina\nMédica',
              height: 68,
              index: 4,
              selectedIndex: controller.selectedProgram,
              onTap: () => controller.updateSelectedProgram(4),
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
               spacing: 5,
              children: [
                _customCheckBox(controller),
                const MyText(
                  text: 'Li e concordo com os',
                  fontSize: 15,
                  textColor: kBlackColor,

                ),
                const MyText(
                  text: 'Termos',
                  fontSize: 15,
                  textColor: kBlackColor,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _customCheckBox(IntroScreenController controller) {
    return InkWell(
      onTap: () => controller.updateCheckedBox(),
      child: Container(
        height: 24,
        width: 24,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: kTertiaryColor),
        ),
        child: Container(
          height: 14,
          width: 14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: controller.isChecked ? kTertiaryColor : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
