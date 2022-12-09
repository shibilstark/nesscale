import 'package:flutter/material.dart';
import 'package:nesscale_test/core/colors/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.controller,
      this.showText = true,
      this.focusNode,
      this.height = 40,
      this.type,
      required this.hintText,
      this.radius = 10,
      this.textStyle,
      this.prefixIcon,
      this.validator});
  final TextEditingController controller;
  FocusNode? focusNode;
  final double radius;
  final double height;
  TextStyle? textStyle;
  final String hintText;
  TextInputType? type;
  String? Function(String?)? validator;
  Widget? prefixIcon;
  final bool showText;

  final getTextStyle = const TextStyle(
    color: AppColors.darkBlue,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: type,
      focusNode: focusNode,
      maxLines: 1,
      expands: false,
      textAlignVertical: TextAlignVertical.center,
      obscureText: !showText,
      decoration: InputDecoration(
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle:
            TextStyle(fontSize: 14, color: AppColors.darkBlue.withOpacity(0.7)),
        filled: true,
        isDense: true,

        prefixIcon: prefixIcon,
        fillColor: AppColors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
        // contentPadding:
        //     EdgeInsets.symmetric(vertical: height / 2, horizontal: 10),
      ),
      style: textStyle ?? getTextStyle,
    );
  }
}
