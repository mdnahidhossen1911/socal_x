import 'dart:async';

import 'package:flutter/material.dart';
import 'package:socal_x/ui/screens/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3), () =>
        Navigator.popAndPushNamed(context,SignInScreen.name)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSplash(),
    );
  }

  Widget _buildSplash() {
    return Stack(
      children: [
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/splash_bg.png',
              fit: BoxFit.cover,
            )),
        Center(
          child: SizedBox(
              height: 110,
              width: 110,
              child: Image.asset('assets/icons/x_logo.png')),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'SOCAL X',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
