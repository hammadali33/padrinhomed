import 'package:flutter/cupertino.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/widgets/MyTextField.dart';
import 'package:padrinhomed/widgets/my_text.dart';

class Step2 extends StatelessWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MyText(
              text: 'Oi, Jú!',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              paddingBottom: 5,


            ),
            MyText(
              text: 'Estamos felizes que está por\naqui. Vamos criar sua conta?',
              fontSize: 18,
              textColor: kLightGreyColor,
            ),
          ],),
        MyTextField(
          labelText: 'Crie uma senha',
          hintText: 'drajulianalongen@gmail.com',
        ),
        MyTextField(
          labelText: 'Digite seu nome e sobrenome',
          hintText: '************',
          isPassword: true,
          haveSuffixIcon: true,
        ),
        Container(),
        Container(),

      ],
    );
  }
}
