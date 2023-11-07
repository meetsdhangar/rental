import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental/Screens/clothmen.dart';
import 'package:rental/Screens/imagepicker.dart';
import 'package:rental/Screens/navifaton.dart';
import 'package:rental/Screens/signin.dart';
import 'package:rental/Screens/signup.dart';
import 'package:rental/route.dart';

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
      // home: Imagepickerdemo(),
      initialRoute: "/",
      routes: {
        "/": (context) => navigation(),
        myRoute.navigatonbarRoute: (context) => navigation(),
        myRoute.signinRoute: (context) => signin(),
        myRoute.signupRoute: (context) => signup(),
        myRoute.clothmenRoute: (context) => clothmen(),
      },
    );
  }
}
