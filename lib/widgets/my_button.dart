import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/widgets/my_text.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onTap;
  final bool buttonStatus;

  const MyButton({
    super.key,
    this.buttonText = 'button',
    this.onTap,
    this.buttonStatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: buttonStatus ? kSecondaryColor : kLightGreyColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: kPrimaryColor.withOpacity(0.1),
          highlightColor: kPrimaryColor.withOpacity(0.1),
          onTap: onTap,
          child: Center(
            child: MyText(
              text: buttonText,
              textColor: buttonStatus ? kPrimaryColor : kDarkGreyColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
