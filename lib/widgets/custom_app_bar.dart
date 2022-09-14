import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/widgets/my_text.dart';

Widget customAppBar() {
  return TextButton.icon(
    onPressed: () => Get.back,
    icon: const Icon(
      Icons.arrow_back_ios,
      size: 16,
      color: kTertiaryColor,
    ),
    label: const MyText(
      text: 'VOLTAR',
      fontSize: 15,
    ),
  );
}
