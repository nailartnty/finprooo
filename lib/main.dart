import 'package:finpronih/UI/Auth/login_screen.dart';
import 'package:finpronih/UI/Auth/signin_screen.dart';
import 'package:finpronih/UI/Splash/on_boarding.dart';
import 'package:finpronih/UI/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeWalkApp());
}

class HomeWalkApp extends StatelessWidget {
  const HomeWalkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Walk',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Sofia Pro',
        visualDensity: VisualDensity.adaptivePlatformDensity, // buat dia responsive
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black),
          bodySmall: TextStyle(color: Colors.black)
        )
      ),
      
      initialRoute: '/',
      routes: {
        '/' : (context) => const SplashScreen(),
        '/login' : (context) => const LoginScreen(),
        '/signup' : (context) => const SigninScreen(),
        '/onboarding' : (context) => const OnboardingScreen(),

      },
    );
  }
}