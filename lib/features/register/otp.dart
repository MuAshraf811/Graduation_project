import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/core/constants/colors.dart';
import 'package:graduation_project/core/extensions/context_extensions.dart';
import 'package:graduation_project/features/home/view/home_view.dart';
import 'package:graduation_project/features/login/widgets/custom_button.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: SvgPicture.asset(
                    'images/Svgs/transaction-password-otp-verification-code-security-svgrepo-com.svg',
                    //fit: BoxFit.fill,
                    theme: const SvgTheme(
                      currentColor: Colors.teal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'We\'ve sent a Verification code \nto your Mobile number',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),
              OtpTextField(
                numberOfFields: 4,
                showCursor: true,
                textStyle: const TextStyle(
                  color: ConstantColors.appMainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                enabled: true,
                obscureText: false,
                focusedBorderColor: ConstantColors.appMainColor,
                borderColor: ConstantColors.appMainColor,
                borderRadius: BorderRadius.circular(8),
                autoFocus: false,
                keyboardType: TextInputType.number,
                showFieldAsBox: true,
                borderWidth: 2,
                fieldWidth: 50,
                cursorColor: ConstantColors.appMainColor,
              ),
              const SizedBox(height: 32),
              CustomButton(
                  text: 'Submit',
                  onTap: () {
                    context.customPush(const HomePageView());
                  }),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Didn\'t recieve code?',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Resend again.',
                        style: TextStyle(color: Colors.teal, fontSize: 20),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
