import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rental/Screens/clothmen.dart';

import 'package:rental/Screens/navifaton.dart';
import 'package:rental/Screens/signin.dart';
import 'package:rental/Screens/signup.dart';
import 'package:rental/firebase_options.dart';
import 'package:rental/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
        "/": (context) => signin(),
        myRoute.navigatonbarRoute: (context) => navigation(),
        myRoute.signinRoute: (context) => signin(),
        myRoute.signupRoute: (context) => signup(),
        myRoute.clothmenRoute: (context) => clothmen(),
      },
    );
  }
}
