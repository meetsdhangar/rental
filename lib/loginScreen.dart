import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/authController.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController controller = Get.put(authController());
    var mobileController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Mobile no"),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: mobileController,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  if (mobileController.text == '') {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please Enter mobile no")));
                  } else {
                    controller.verifyMobileNumber(
                        "+91", mobileController.text, context);
                  }
                },
                child: Text("Send Otp"))
          ],
        ),
      ),
    );
  }
}
