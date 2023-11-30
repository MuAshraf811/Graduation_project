import 'package:flutter/material.dart';
import 'package:graduation_project/features/splash/splash.dart';

void main() {
  runApp(const DocDoc());
}

class DocDoc extends StatelessWidget {
  const DocDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: AppSplashScreen(),
    );
  }
}