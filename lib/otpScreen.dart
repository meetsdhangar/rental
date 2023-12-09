import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:rental/authController.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController controller = Get.put(authController());
    String otp = '';
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Enter Otp Here,"),
          SizedBox(height: 20),
          Pinput(
            length: 6,
            onChanged: (value) {
              otp = value;
            },
            onCompleted: (value) {
              otp = value;
            },
          ),
          SizedBox(height: 20),
          TextButton(
              onPressed: () {
                try {
                  controller.verifyOTP(otp);
                } catch (e) {
                  if (otp.length < 6) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please Enter 6 Digit OTP")));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Invalid OTP")));
                  }
                }
                // try {
                //   controller.verifyOTP(otp);
                // } catch (e) {
                //   if (otp.length < 6) {
                //     ScaffoldMessenger.of(context).showSnackBar(
                //         SnackBar(content: Text("Please Enter Otp")));
                //   } else {
                //     ScaffoldMessenger.of(context)
                //         .showSnackBar(SnackBar(content: Text("Invalid OTP")));
                //   }
                // }

                // if (otp == '') {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //       SnackBar(content: Text("Please Enter Otp")));
                // } else if (otp.length < 6) {
                //   ScaffoldMessenger.of(context)
                //       .showSnackBar(SnackBar(content: Text("Invalid otp")));
                // } else {
                //   controller.verifyOTP(otp);
                // }
              },
              child: Text("Verify"))
        ],
      ),
    );
  }
}
