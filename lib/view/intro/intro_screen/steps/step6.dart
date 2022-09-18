import 'package:flutter/material.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/widgets/MyTextField.dart';
import 'package:padrinhomed/widgets/my_text.dart';

class Step6 extends StatelessWidget {
  const Step6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 35,),
        const MyText(
          text: 'Beleza!',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        const MyText(
          text: 'Agora selecione o seu estado (UF) e a sua cidade:',
          fontSize: 18,
          textColor: kLightGreyColor,
          paddingTop: 5,
          paddingBottom: 20,
        ),
        const MyText(
          text: 'Onde você mora?',
          textColor: kLightBlackColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          paddingBottom: 20,
        ),
        MyTextField(
          labelText: 'Selecione o Estado',
          suffix: const Icon(Icons.keyboard_arrow_down_outlined),


        ),
        const SizedBox(height: 20,),
        MyTextField(
          labelText: 'E agora, sua cidade',
          suffix: const Icon(Icons.search),



        )
      ],
    );
  }
}
