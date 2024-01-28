
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/theme/cubits/theme_cubit.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit , int>(
      builder: (context, state) {
        return SwitchListTile(
          title: const Text(
            'Dark theme',
            style: TextStyle(fontSize: 17),
          ),
          value: context.read<ThemeCubit>().state == 0 ? false : true,
          splashRadius: 24,
          onChanged: (bool val) {
            context.read<ThemeCubit>().getThemeState(val);
          },
        );
      }
    );
  }
}