import 'package:ecommerce/constants/global_variables.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: GlobalVariables.lightgreen,
        child: Center(
          child: Image.asset(
            'assets/images/icon.png',
            width: 120,
            height: 55,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
