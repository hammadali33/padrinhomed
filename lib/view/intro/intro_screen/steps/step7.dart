import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/controller/intro_screen_controller/intro_screen_controller.dart';
import 'package:padrinhomed/widgets/my_text.dart';
import 'package:padrinhomed/widgets/selection_button.dart';

class Step7 extends StatelessWidget {
  const Step7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroScreenController>(builder: (controller) {
      return ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const MyText(
            text: 'Nível de graduação?',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            paddingBottom: 5,

          ),
          const MyText(
            text: 'Selecione a opção que melhor define seu nível de graduação',
            fontSize: 18,
            textColor: kLightGreyColor,

          ),
          const SizedBox(height: 20,),
          SelectionButton(
            buttonText: 'Estudante\n(1º ao 8º semestre)',
            height: 68,
            index: 0,
            selectedIndex:controller.selectedDegree,
            onTap: ()=>controller.updateSelectedDegree(0),

          ),
          SelectionButton(
            buttonText: 'Internato\n(9º ao 12º semestre)',
            height: 68,
            index: 1,
            selectedIndex:controller.selectedDegree,
            onTap: ()=>controller.updateSelectedDegree(1),
          ),
          SelectionButton(
            buttonText: 'Médico\nGraduado',
            height: 68,
            index: 2,
            selectedIndex:controller.selectedDegree,
            onTap: ()=>controller.updateSelectedDegree(2),
          ),
          SelectionButton(
            buttonText: 'Em Especialização\n/ Residente',
            height: 68,
            index: 3,
            selectedIndex:controller.selectedDegree,
            onTap: ()=>controller.updateSelectedDegree(3),
          ),
          SelectionButton(
            buttonText: 'Médico\nEspecialista',
            height: 68,
            index: 4,
            selectedIndex:controller.selectedDegree,
            onTap: ()=>controller.updateSelectedDegree(4),
          ),

        ],
      );
    });
  }
}
