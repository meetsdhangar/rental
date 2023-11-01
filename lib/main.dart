import 'package:flutter/material.dart';
import 'package:rental/Screens/forgotpass.dart';
import 'package:rental/Screens/resetpass.dart';
import 'package:rental/Screens/signin.dart';
import 'package:rental/Screens/splash.dart';
import 'package:rental/Screens/verification.dart';

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
      home: splash(),
    );
  }
}
