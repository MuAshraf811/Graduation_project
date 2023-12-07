import 'package:flutter/material.dart';
import 'package:graduation_project/core/extensions/context_extensions.dart';
import 'package:graduation_project/features/login/login_view.dart';
import 'package:graduation_project/features/login/widgets/continue_with_container.dart';
import 'package:graduation_project/features/login/widgets/custom_button.dart';

import 'package:graduation_project/features/login/widgets/custom_text_form_field.dart';

import 'widgets/gender_radio.dart';
import 'widgets/progress_stepper.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const ProgressStepper(
                    isFirstStepAcctive: true,
                    isSecondStepAcctive: false,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormFiels(
                          hintText: 'First name',
                          horizontalPadding: 4,
                          suffixIcon: Icons.person,
                          contentHorizontalPadding: 8,
                          contentVerticalPadding: 16,
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return 'this field shouldn\'t be empty';
                            }
                            return null;
                          },
                          controller: firstNameController,
                        ),
                      ),
                      Expanded(
                        child: CustomTextFormFiels(
                          horizontalPadding: 4,
                          contentHorizontalPadding: 8,
                          contentVerticalPadding: 16,
                          controller: secondNameController,
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return 'this field shouldn\'t be empty';
                            }
                            return null;
                          },
                          suffixIcon: Icons.person_outline_rounded,
                          hintText: 'Second Name',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormFiels(
                    horizontalPadding: 4,
                    contentHorizontalPadding: 12,
                    contentVerticalPadding: 16,
                    controller: emailController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'this field shouldn\'t be empty';
                      } else if (p0.length <= 10) {
                        return 'this field should be 10 digits at least';
                      }
                      return null;
                    },
                    suffixIcon: Icons.email_outlined,
                    hintText: 'Enter your Email',
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormFiels(
                    horizontalPadding: 4,
                    contentHorizontalPadding: 12,
                    contentVerticalPadding: 16,
                    controller: passwordController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'this field shouldn\'t be empty';
                      } else if (p0.length < 7) {
                        return 'password should be 8 digits at least';
                      }
                      return null;
                    },
                    suffixIcon: Icons.remove_red_eye_outlined,
                    hintText: 'Enter your password',
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormFiels(
                    horizontalPadding: 4,
                    contentHorizontalPadding: 12,
                    contentVerticalPadding: 16,
                    controller: confirmPasswordController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'this field shouldn\'t be empty';
                      } else if (passwordController.value !=
                          confirmPasswordController.value) {
                        return 'password dosn\'t match';
                      }
                      return null;
                    },
                    suffixIcon: Icons.remove_red_eye_outlined,
                    hintText: 'confirm your password',
                  ),
                  const SizedBox(height: 4),
                  const GenderRadio(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Already have account?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 131, 130, 130),
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              context.customPop(LoginView());
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 17,
                              ),
                            ))
                      ],
                    ),
                  ),
                  CustomButton(
                      text: 'Sign Up',
                      onTap: () {
                        context.customPushReplaceMent(LoginView());
                      }),
                  const SizedBox(height: 8),
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
                  const SizedBox(height: 10),
                  const ContinueWithContainer(
                    name: 'Continue with Google',
                    svgImagePath: 'images/Svgs/google-icon-logo-svg-vector.svg',
                    space: 48,
                  ),
                  const SizedBox(height: 8),
                  const ContinueWithContainer(
                    name: 'Continue with Facebook',
                    svgImagePath: 'images/Svgs/facebook-3-logo-svg-vector.svg',
                    space: 30,
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
