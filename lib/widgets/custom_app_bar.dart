import 'package:flutter/material.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/widgets/my_text.dart';

Widget customBackButton(onTap) {
  return TextButton.icon(
    onPressed: onTap,
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
