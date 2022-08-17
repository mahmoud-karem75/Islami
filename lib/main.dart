import 'package:flutter/material.dart';
import 'package:islami/splash_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      initialRoute: SplashScreen.route,
      routes: {
        MyHomeScreen.route: (_) => const MyHomeScreen(),
        SplashScreen.route: (_) => const SplashScreen()
      },
    );
  }
}
