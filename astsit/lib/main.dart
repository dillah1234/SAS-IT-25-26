import 'package:astsit/login.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Lottie.asset('asset/loader.json'),
            ),
            const SizedBox(height: 10),
            const Text(
              "my exam ku",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        nextScreen: LoginSimple(),
        splashIconSize: 200,
        backgroundColor: Colors.white,
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
