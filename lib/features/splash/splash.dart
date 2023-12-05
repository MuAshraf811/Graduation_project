import 'package:flutter/material.dart';
import 'package:graduation_project/features/on_bording/on_bording.dart';
import 'package:lottie/lottie.dart';

class AppSplashScreen extends StatefulWidget {
  const AppSplashScreen({super.key});

  @override
  State<AppSplashScreen> createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _splashController;
  @override
  void initState() {
    _splashController =
        AnimationController(vsync: this, duration: const Duration(seconds: 8));
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return  OnBordingScreen();
      }));
    });
    super.initState();
  }

  @override
  void dispose() {
    _splashController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                'animations/pharmacy.json',
                height: 250,
                width: 280,
                frameRate: FrameRate.max,
                fit: BoxFit.fill,
                controller: _splashController,
                repeat: false,
                filterQuality: FilterQuality.high,
                onLoaded: (LottieComposition comp) {
                  _splashController.duration = comp.duration;
                  _splashController.forward();
                },
              ),
              const SizedBox(height: 32),
              const Text(
                'Welcomt to IKSIRS',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
