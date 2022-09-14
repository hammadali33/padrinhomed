import 'package:flutter/cupertino.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/widgets/MyTextField.dart';
import 'package:padrinhomed/widgets/my_text.dart';

class Step1 extends StatelessWidget {
  const Step1({Key? key}) : super(key: key);

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
              text: 'Seja bem-vindo!',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              paddingBottom: 5,

            ),
            MyText(
              text: 'Para começar, como\npodemos te chamar?',
              fontSize: 18,
              textColor: kLightGreyColor,
            ),
          ],
        ),
        MyTextField(
          labelText: 'Como quer ser chamado?',
          hintText: 'Jú',
        ),
        MyTextField(
          labelText: 'Digite seu nome e sobrenome',
          hintText: 'Juliana Longen',
        ),
        Container(),
        Container(),
      ],
    );
  }
}
