import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rental/Screens/home.dart';
import 'package:rental/Screens/login.dart';

import 'package:rental/Screens/navigation.dart';

import 'package:rental/Screens/verification.dart';

import 'package:shared_preferences/shared_preferences.dart';

class authController extends GetxController {
  RxString verId = ''.obs;
  FirebaseAuth auth = FirebaseAuth.instance;

  verifyMobileNumber(contryCode, mobileno, context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '${contryCode + mobileno}',
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Invalid Mobile number")));
        } else {
          print(e);
          // ScaffoldMessenger.of(context)
          //     .showSnackBar(SnackBar(content: Text("$e")));
          //print();
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        verId.value = verificationId;
      },
      timeout: Duration(seconds: 120),
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    //   Get.to(() => verification());
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => verification()),
        (route) => false);
  }

  verifyOTP(code) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verId.value, smsCode: code);

      await auth.signInWithCredential(credential);
      //store login value in sp
      final sp = await SharedPreferences.getInstance();
      sp.setBool('login', true);
      Get.to(() => navigation());
    } catch (e) {
      Get.snackbar(
        "Error",
        '${e}',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }

    // SharedPreferences sp = await SharedPreferences.getInstance();
    // try {
    //   FirebaseAuth auth = FirebaseAuth.instance;
    //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
    //       verificationId: verId.value, smsCode: code);

    //   await auth.signInWithCredential(credential);
    //   //store login value in sp

    //   Get.to(() => home());
    // } catch (e) {
    //   Get.snackbar(
    //     "Error",
    //     'Enter Valid OTP.',
    //     backgroundColor: Colors.red,
    //     colorText: Colors.white,
    //   );
    // }
  }

  // verifyotp(code) async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   try {
  //     FirebaseAuth auth = FirebaseAuth.instance;
  //     PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //         verificationId: verId.value, smsCode: code);
  //     await auth.signInWithCredential(credential);
  //     sp.setBool('phonelogin', true);
  //     Get.offAll(() => navigation());
  //   } catch (e) {
  //     Get.snackbar("Error", "Invalid OTP");
  //   }
  // }

  signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print('google myerror: ${e.toString()}');
    }
  }

  googlesignIn() async {
    GoogleAuthProvider gprovider = GoogleAuthProvider();
    final data = await auth.signInWithProvider(gprovider);
    final sp = await SharedPreferences.getInstance();
    sp.setBool('googlelogin', true);
    Get.offAll(navigation());
    return data;
  }

  Future<void> signOutGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final FirebaseAuth auth = FirebaseAuth.instance;

    try {
      // Sign out from Google
      await googleSignIn.signOut();

      // Sign out from Firebase
      return await auth.signOut();
    } catch (e) {
      print("Error signing out: $e");
    }
  }

  appLogout() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    if (sp.containsKey('googlelogin')) {
      await auth.signOut();
    }
    sp.clear();
    Get.offAll(() => login());
  }
}
