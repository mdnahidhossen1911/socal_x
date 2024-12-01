import 'package:flutter/material.dart';
import 'package:socal_x/ui/screens/splash_screen.dart';
import 'ui/screens/sign_in_screen.dart';

class SocalxApp extends StatelessWidget {
  const SocalxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Socal X',
      routes: {
        '/': (context)=> const SplashScreen(),
        SignInScreen.name: (context)=> const SignInScreen(),
      },
    );
  }
}
