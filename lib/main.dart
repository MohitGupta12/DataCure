import 'package:flutter/material.dart';
import 'package:datacure/screens/Authentication/LoginPage.dart';
import 'screens/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      routes: {
        'login': (context) => const LoginPage(),
        'Splash': (context) => const Splash(),
      },
    );
  }
}
