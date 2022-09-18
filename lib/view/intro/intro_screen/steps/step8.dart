import 'package:flutter/material.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/widgets/MyTextField.dart';
import 'package:padrinhomed/widgets/my_text.dart';

class Step8 extends StatelessWidget {
  const Step8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const MyText(
          text: 'Qual sua especialidade?',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        const MyText(
          text: 'Escolha a especialidade que melhor define sua atuação',
          fontSize: 18,
          textColor: kLightGreyColor,
          paddingTop: 5,
          paddingBottom: 20,
        ),

        MyTextField(
          labelText: 'Digite sua especialidade',
          suffix: const Icon(Icons.keyboard_arrow_down_outlined),
        ),
      ],
    );
  }
}
