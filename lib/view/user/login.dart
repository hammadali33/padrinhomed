import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/app_images.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/routes/routes.dart';
import 'package:padrinhomed/widgets/MyTextField.dart';
import 'package:padrinhomed/widgets/my_button.dart';
import 'package:padrinhomed/widgets/my_text.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: mainPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              kSplashIcon,
              height: 95,
            ),
            Column(
              children: [
                MyTextField(
                  labelText: 'E-mail',
                  hintText: 'drajulianalongen@gmail.com',
                ),
                const SizedBox(
                  height: 30,
                ),
                MyTextField(
                  labelText: 'Senha',
                  isPassword: true,
                  haveSuffixIcon: true,
                  hintText: '**************',
                  counter: GestureDetector(
                    onTap: () {},
                    child: const MyText(
                      text: 'Esqueceu?',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      textColor: kSecondaryColor,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MyButton(
                  buttonText: 'ENTRAR',
                  buttonStatus: true,
                  onTap: () => Get.toNamed(AppLink.stepperScreen),
                ),
                const MyText(
                  text: 'Criar nova conta',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  paddingTop: 15,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
