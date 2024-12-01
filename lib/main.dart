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
      
    );
  }
}