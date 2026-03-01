import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeigt = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenHeigt,
          width: screenWidth,
          child: Center(
            child: Image.asset('assets/logo/center.png'),
          ),
        ),
      ),
      );
  }
}
