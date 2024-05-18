import 'package:flutter/material.dart';
import 'package:untitled13/beverages.dart';
import 'package:untitled13/cart.dart';
import 'package:untitled13/home.dart';
import 'package:untitled13/onboarding.dart';
import 'package:untitled13/splash_screen.dart';
import 'package:untitled13/successful_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Beverages()
    );
  }
}


