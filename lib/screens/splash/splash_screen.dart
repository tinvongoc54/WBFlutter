import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warenb/main.dart';
import 'package:warenb/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _animate = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // AnimatedPositioned(
          //   top: 60,
          //   left: _animate ? 20 : -20,
          //   duration: const Duration(seconds: 1),
          //   child: const Text(
          //     'Shopping &',
          //     style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
          //   ),
          // ),
          // AnimatedPositioned(
          //   top: 100,
          //   left: _animate ? 20 : -70,
          //   duration: const Duration(milliseconds: 800),
          //   child: const Text(
          //     'enjoy your life',
          //     style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
          //   ),
          // ),
          AnimatedOpacity(
            opacity: _animate ? 1 : 0,
            duration: const Duration(milliseconds: 1500),
            child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/image_wb_logo.png')),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _animate = true;
    });
    await Future.delayed(const Duration(milliseconds: 3000));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomeScreen(
                  title: 'WarenB',
                )));
  }
}
