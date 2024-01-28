import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/constants/colors.dart';
import 'package:graduation_project/core/localStorage/shared_preferences_storage.dart';
import 'package:graduation_project/core/theme/cubits/theme_cubit.dart';
import 'package:graduation_project/features/home/blocs/cubit/navigation_cubit.dart';
import 'package:graduation_project/features/on_bording/on_bording.dart';

import 'core/router/app_router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager.getSharedPref();
  runApp(const DocDoc());
}

class DocDoc extends StatelessWidget {
  const DocDoc({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, int>(builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: SharedPreferencesManager.getIntVal() == 0
              ? ThemeData(
                  primaryColor: ConstantColors.appMainColor,
                  colorScheme: const ColorScheme.light(
                    primary: ConstantColors.appMainColor,
                  ),
                )
              : ThemeData.dark(),
          onGenerateRoute: (settings) {
            return AppRouter.generateRoute(settings);
          },
          home: // const SettingsView(),
              const OnBordingScreen(),
          // const HomePageView(),
        );
      }),
    );
  }
}
