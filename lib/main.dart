import 'package:flutter/material.dart';
import 'package:graduation_project/core/constants/colors.dart';
import 'package:graduation_project/features/on_bording/on_bording.dart';

void main() {
  runApp(const DocDoc());
}

class DocDoc extends StatelessWidget {
  const DocDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: ConstantColors.appMainColor,
          colorScheme: const ColorScheme.light(
            primary: ConstantColors.appMainColor,
          )),
      home: OnBordingScreen(),
    );
  }
}
