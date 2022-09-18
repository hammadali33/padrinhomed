import 'package:flutter/material.dart';
import 'package:padrinhomed/constant/color.dart';

class MyTextField extends StatefulWidget {
  String? labelText, hintText;
  bool haveSuffixIcon, isPassword;
  Widget? counter,suffix;

  MyTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.counter,
    this.suffix,
    this.haveSuffixIcon = false,
    this.isPassword = false,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? true : false,
      cursorColor: kTertiaryColor,
      cursorWidth: 2,
      obscuringCharacter: '*',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),

      decoration: InputDecoration(
        suffixIcon: widget.haveSuffixIcon
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.isPassword = !widget.isPassword;
                  });
                },
                icon: Icon(
                  widget.isPassword ? Icons.visibility_off : Icons.visibility,
                  color: kBlackColor,
                ),
              )
            : widget.suffix,

        labelText: widget.labelText,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        labelStyle: const TextStyle(
          fontSize: 18,
          color: kTertiaryColor,
        ),
        counter: widget.counter,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: kTertiaryColor,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
