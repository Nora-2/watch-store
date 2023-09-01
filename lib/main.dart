import 'package:flutter/material.dart';
import 'package:signin_signup/screens/splash/splash_screen.dart';
import 'onBoarding/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
       title: 'Watch Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoarding();
  }
}
