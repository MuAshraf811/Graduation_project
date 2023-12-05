import 'package:flutter/material.dart';

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
  });
  final String hintText;
  final IconData suffixIcon;
  final TextEditingController controller;
  final double contentHorizontalPadding;
  final double contentVerticalPadding;
  final bool obsecureText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obsecureText,
        
        validator: validator,
        cursorColor: Colors.teal,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
              horizontal: contentHorizontalPadding,
              vertical: contentVerticalPadding),
          suffixIcon: Icon(suffixIcon, color: Colors.teal),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.teal,
              width: 1.3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.teal,
              )),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.teal,
              width: 1.3,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.teal,
              width: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}
