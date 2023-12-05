import 'package:flutter/material.dart';
import 'package:graduation_project/features/login/login_view.dart';



void main() {
  runApp(const DocDoc());
}

class DocDoc extends StatelessWidget {
  const DocDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: LoginView(),
    );
  }
}