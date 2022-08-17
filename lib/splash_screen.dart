import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const route = 'splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
        body: StreamBuilder<Object>(
            initialData: Timer(
                const Duration(seconds: 1, milliseconds: 500),
                () => Navigator.pushNamedAndRemoveUntil(
                    context, MyHomeScreen.route, (_) => false)),
            stream: null,
            builder: (context, snapshot) {
              return Image.asset(
                isDarkMode ? 'assets/splash_dark.png' : 'assets/splash.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              );
            }));
  }
}
