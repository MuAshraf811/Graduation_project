import 'package:flutter/material.dart';
import 'package:graduation_project/core/extensions/context_extensions.dart';
import 'package:graduation_project/features/login/widgets/custom_button.dart';
import 'package:graduation_project/features/login/widgets/custom_text_form_field.dart';
import 'package:graduation_project/features/register/otp.dart';
import 'package:graduation_project/features/register/widgets/gender_radio.dart';
import 'package:graduation_project/features/register/widgets/progress_stepper.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({super.key});

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {
  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController secondNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProgressStepper(
                isFirstStepAcctive: false,
                isSecondStepAcctive: true,
              ),
              const SizedBox(height: 6),
              const Text(
                'Complete Registeration',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
              CustomTextFormFiels(
                hintText: 'First name',
                horizontalPadding: 4,
                suffixIcon: Icons.person,
                contentHorizontalPadding: 8,
                contentVerticalPadding: 18,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return 'this field shouldn\'t be empty';
                  }
                  return null;
                },
                controller: firstNameController,
              ),
              const SizedBox(height: 12),
              CustomTextFormFiels(
                horizontalPadding: 4,
                contentHorizontalPadding: 8,
                contentVerticalPadding: 18,
                controller: secondNameController,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return 'this field shouldn\'t be empty';
                  }
                  return null;
                },
                suffixIcon: Icons.person,
                hintText: 'Second Name',
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber phone) {},
                  inputBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.DROPDOWN,
                    showFlags: true,
                    leadingPadding: 2,
                    trailingSpace: false,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const GenderRadio(),
              const SizedBox(height: 48),
              CustomButton(
                  text: 'Continue',
                  onTap: () {
                    context.customPush(const Otp());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
