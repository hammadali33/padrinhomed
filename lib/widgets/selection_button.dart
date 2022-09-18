import 'package:flutter/material.dart';
import 'package:padrinhomed/constant/color.dart';
import 'package:padrinhomed/widgets/my_text.dart';

class SelectionButton extends StatelessWidget {
  SelectionButton({
    this.buttonText,
    this.index,
    this.height = 48,
    this.onTap,
    this.selectedIndex,
    this.isSelected = false,
  });

  String? buttonText;
  int? selectedIndex;
  double? height;
  VoidCallback? onTap;
  bool isSelected;

  int? index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        onPressed: onTap,
        height: height,
        elevation: 0,
        highlightElevation: 0,
        color: selectedIndex == index || isSelected
            ? kSecondaryColor
            : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            width: 1,
            color: selectedIndex == index || isSelected
                ? Colors.transparent
                : kTertiaryColor,
          ),
        ),
        child: MyText(
          text: buttonText,
          fontSize: 18,
          textColor: selectedIndex == index || isSelected
              ? kPrimaryColor
              : kTertiaryColor,
          fontWeight: selectedIndex == index || isSelected
              ? FontWeight.bold
              : FontWeight.normal,
          align: TextAlign.center,
        ),
      ),
    );
  }
}
