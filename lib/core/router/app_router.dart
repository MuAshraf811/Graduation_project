import 'package:flutter/material.dart';
import 'package:graduation_project/features/home/view/home_view.dart';
import 'package:graduation_project/features/login/login_view.dart';
import 'package:graduation_project/features/on_bording/on_bording.dart';
import 'package:graduation_project/features/register/otp.dart';
import 'package:graduation_project/features/register/phone_number_view.dart';
import 'package:graduation_project/features/register/register_view.dart';
import 'package:graduation_project/features/settings/presentaion/settings_view.dart';

class AppRouter {
static  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePageView());

      case '/settings':
        return MaterialPageRoute(builder: (_) => const SettingsView());

      case '/onBoarding':
        return MaterialPageRoute(builder: (_) => const OnBordingScreen());

      case '/logIn':
        return MaterialPageRoute(builder: (_) => LoginView());

      case '/otp':
        return MaterialPageRoute(builder: (_) => const Otp());

      case '/phoneNumberView':
        return MaterialPageRoute(builder: (_) => const PhoneNumberView());

      case '/Register':
        return MaterialPageRoute(builder: (_) => RegisterView());
      default:
        return  MaterialPageRoute(builder: (_)=> const OnBordingScreen()) ;
    }
  }
}
