import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/constants/colors.dart';
import 'package:graduation_project/features/home/blocs/cubit/navigation_cubit.dart';
import 'package:graduation_project/features/home/view/home_view.dart';
import 'package:graduation_project/features/on_bording/on_bording.dart';

import 'core/router/app_router.dart';

void main() {
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
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ConstantColors.appMainColor,
          colorScheme: const ColorScheme.light(
            primary: ConstantColors.appMainColor,
          ),
        ),
        onGenerateRoute: (settings) {
        return  AppRouter.generateRoute(settings);
        },
        

        home: // const SettingsView(),
            const OnBordingScreen(),
        // const HomePageView(),
      ),
    );
  }
}
