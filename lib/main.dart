import 'package:account_app/core/theme/app_color.dart';
import 'package:account_app/feature/onbourd/screens/on_bourding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     
      home: OnBoarding()
    );
  }
}

