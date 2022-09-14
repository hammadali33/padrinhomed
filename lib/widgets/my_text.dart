import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:padrinhomed/constant/color.dart';

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    required this.text,
    this.fontSize,
    this.height,
    this.maxLines = 100,
    this.decoration = TextDecoration.none,
    this.textColor = kTertiaryColor,
    this.fontWeight = FontWeight.w300,
    this.align,
    this.overFlow = TextOverflow.ellipsis,
    this.fontFamily = 'Montserrat',
    this.paddingTop = 0,
    this.paddingRight = 0,
    this.paddingLeft = 0,
    this.paddingBottom = 0,
    this.onTap,
  }) : super(key: key);

  final String? text, fontFamily;
  final TextDecoration? decoration;
  final TextAlign? align;
  final FontWeight? fontWeight;
  final Color? textColor;

  final double? paddingTop,
      paddingLeft,
      paddingRight,
      paddingBottom,
      fontSize,
      height;
  final VoidCallback? onTap;

  final TextOverflow? overFlow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop!,
        left: paddingLeft!,
        right: paddingRight!,
        bottom: paddingBottom!,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          "$text",
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: fontWeight,
            decoration: decoration,
            fontFamily: '$fontFamily',
            height: height,
          ),
          textAlign: align,
          maxLines: maxLines,
          overflow: overFlow,
        ),
      ),
    );
  }
}
