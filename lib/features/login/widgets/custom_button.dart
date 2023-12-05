import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text , required this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell( 
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(14),
          ),
          child:  Center(
            child: Text(
            text,
              style:const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}