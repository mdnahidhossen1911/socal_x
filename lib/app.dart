import 'package:flutter/material.dart';
import 'package:socal_x/ui/screens/splash_screen.dart';

class SocalxApp extends StatelessWidget {
  const SocalxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Socal X',
      routes: {
        '/': (context)=> const SplashScreen()
      },
    );
  }
}
