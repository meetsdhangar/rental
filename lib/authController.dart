import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/Screens/home.dart';
import 'package:rental/Screens/navifaton.dart';
import 'package:rental/Screens/signin.dart';
import 'package:rental/Screens/verification.dart';
import 'package:rental/otpScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class authController extends GetxController {
  RxString verId = ''.obs;

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
        'Enter Valid OTP.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
