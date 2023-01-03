import 'package:flutter/material.dart';
import 'package:warenb/constants.dart';
import 'package:warenb/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: bgColor
      ),
      home: const SplashScreen(),
    );
  }
}