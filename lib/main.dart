import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rental/Screens/allcategory.dart';
import 'package:rental/Screens/checkout.dart';
import 'package:rental/Screens/home.dart';
import 'package:rental/Screens/navifaton.dart';
import 'package:rental/Screens/signin.dart';
import 'package:rental/Screens/signup.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: navigation(),
    );
  }
}
