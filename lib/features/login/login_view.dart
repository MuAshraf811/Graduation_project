import 'package:flutter/material.dart';
import 'package:graduation_project/core/extensions/context_extensions.dart';
import 'package:graduation_project/features/login/custom_path.dart';
import 'package:graduation_project/features/login/widgets/continue_with_container.dart';
import 'package:graduation_project/features/login/widgets/custom_button.dart';
import 'package:graduation_project/features/login/widgets/custom_text_form_field.dart';
import 'package:graduation_project/features/register/register_view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _validateEmail(String? val) {
    if (val!.isEmpty) {
      return 'this field shouldn\'t be empty';
    }
    return '';
  }

  String? _validatePassWord(String? val) {
    if (val!.isEmpty) {
      return 'this field shouldn\'t be empty';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: ClipPath(
                    clipper: CustomPath(),
                    child: Container(
                      width: 160,
                      height: 120,
                      color: Colors.teal.shade300,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                CustomTextFormFiels(
                  horizontalPadding: 4,
                  validator: _validateEmail,
                  hintText: 'example@email.com',
                  contentHorizontalPadding: 12,
                  contentVerticalPadding: 17,
                  suffixIcon: Icons.email_outlined,
                  controller: _emailController,
                ),
                const SizedBox(height: 16),
                CustomTextFormFiels(
                  horizontalPadding: 4,
                  validator: _validatePassWord,
                  hintText: 'enter your password',
                  contentHorizontalPadding: 12,
                  contentVerticalPadding: 17,
                  suffixIcon: Icons.remove_red_eye_outlined,
                  controller: _passWordController,
                  obsecureText: true,
                ),
                const SizedBox(height: 18),
                CustomButton(
                    text: 'LOG IN',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        return;
                      }
                    }),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Forget your password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 130, 130),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Don\'t have account?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 131, 130, 130),
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            context.customPush(RegisterView());
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 17,
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1.0,
                        width: 150.0,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Or',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        height: 1.0,
                        width: 150.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const ContinueWithContainer(
                  name: 'Continue with Google',
                  svgImagePath: 'images/Svgs/google-icon-logo-svg-vector.svg',
                  space: 48,
                ),
                const SizedBox(height: 12),
                const ContinueWithContainer(
                  name: 'Continue with Facebook',
                  svgImagePath: 'images/Svgs/facebook-3-logo-svg-vector.svg',
                  space: 30,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
