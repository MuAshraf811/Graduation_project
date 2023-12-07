import 'package:flutter/material.dart';
import 'package:graduation_project/core/constants/colors.dart';

class CustomTextFormFiels extends StatelessWidget {
  const CustomTextFormFiels({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    required this.controller,
    required this.contentHorizontalPadding,
    required this.contentVerticalPadding,
    this.obsecureText = false,
    required this.validator,
    required this.horizontalPadding
  });
  final String hintText;
  final IconData suffixIcon;
  final TextEditingController controller;
  final double contentHorizontalPadding;
  final double contentVerticalPadding;
  final bool obsecureText;
  final String? Function(String?)? validator;
  final double horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obsecureText,
        validator: validator,
        cursorColor: ConstantColors.appMainColor,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
              horizontal: contentHorizontalPadding,
              vertical: contentVerticalPadding),
          suffixIcon: Icon(suffixIcon, color: ConstantColors.appMainColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: ConstantColors.appMainColor,
              width: 1.3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: ConstantColors.appMainColor,
              )),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: ConstantColors.appMainColor,
              width: 1.3,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: ConstantColors.appMainColor,
              width: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}
