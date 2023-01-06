import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warenb/constants.dart';
import 'package:warenb/providers/product_manager.dart';
import 'package:warenb/providers/tab_manager.dart';
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
          primarySwatch: Colors.grey, scaffoldBackgroundColor: bgColor),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => TabManager()),
        ChangeNotifierProvider(create: (context) => ProductManager())
      ], child: const SplashScreen()),
    );
  }
}
