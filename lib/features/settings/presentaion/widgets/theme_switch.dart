import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/localStorage/shared_preferences_storage.dart';
import 'package:graduation_project/core/theme/cubits/theme_cubit.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, int>(builder: (context, state) {
      return SwitchListTile(
        title: const Text(
          'Dark theme',
          style: TextStyle(fontSize: 17),
        ),
        value: SharedPreferencesManager.getIntVal() == 1 ? true : false,
        splashRadius: 24,
        onChanged: (bool val) {
          SharedPreferencesManager.storeIntVal(val==true?1:0);
          context.read<ThemeCubit>().getThemeState(val);
        },
      );
    });
  }
}
