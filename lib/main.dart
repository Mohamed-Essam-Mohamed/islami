import 'package:flutter/material.dart';
import 'package:islami_app/splash_screen.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "islami App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
