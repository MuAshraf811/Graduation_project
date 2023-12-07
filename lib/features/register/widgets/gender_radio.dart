import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class GenderRadio extends StatelessWidget {
  const GenderRadio({
    super.key,
  });

  final String _groupVal = 'gender';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RadioListTile<String>(
              value: 'male',
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              title: const Text(
                'Male',
              ),
              fillColor:
                  const MaterialStatePropertyAll(ConstantColors.appMainColor),
              groupValue: _groupVal,
              onChanged: (v) {}),
        ),
        Expanded(
          child: RadioListTile<String>(
              value: 'female',
              fillColor:
                  const MaterialStatePropertyAll(ConstantColors.appMainColor),
              title: const Text(
                'Female',
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              groupValue: _groupVal,
              onChanged: (v) {}),
        ),
        Expanded(
          child: RadioListTile<String>(
              value: 'other',
              fillColor:
                  const MaterialStatePropertyAll(ConstantColors.appMainColor),
              title: const Text(
                'Other',
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              groupValue: _groupVal,
              onChanged: (v) {}),
        ),
      ],
    );
  }
}
