import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rental/Screens/commonwidget.dart';

import 'package:rental/Screens/oredrhistory.dart';
import 'package:rental/Screens/signin.dart';

class editprofile extends StatefulWidget {
  const editprofile({super.key});

  @override
  State<editprofile> createState() => _editprofileState();
}

File? img;

class _editprofileState extends State<editprofile> {
  selectimage() async {
    final myimage = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (myimage == null) {
        return;
      } else {
        img = File(myimage.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: 395,
            height: 810,
            decoration: BoxDecoration(
              color: Color(0xFF1B3E41),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => signin(),
                              ));
                            },
                            child: Container(
                              width: 27,
                              height: 27,
                              decoration: BoxDecoration(
                                color: Color(0xFFDF453E),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(
                                Icons.chevron_left,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 95),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 105,
                    ),
                    Container(
                      width: 395,
                      height: 625,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(top: 34),
                                  child: img == null
                                      ? Container(
                                          width: 130,
                                          height: 130,
                                          decoration: ShapeDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/prof1.png"),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: OvalBorder(),
                                          ),
                                        )
                                      : Container(
                                          width: 130,
                                          height: 130,
                                          decoration: ShapeDecoration(
                                            image: DecorationImage(
                                              image: FileImage(img!),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: OvalBorder(),
                                          ),
                                        )),
                              Positioned(
                                top: 130,
                                left: 90,
                                child: InkWell(
                                  onTap: () {
                                    selectimage();
                                  },
                                  child: Container(
                                    width: 28,
                                    height: 28,
                                    child: Icon(
                                      Icons.edit,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xFF1B3E41),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 39,
                          ),
                          commonContainer("Patel Sandhya", TextInputType.text),
                          SizedBox(
                            height: 16,
                          ),
                          commonContainer("1234567890", TextInputType.phone),
                          SizedBox(
                            height: 16,
                          ),
                          commonContainer("Sandhya123@Gmail.com",
                              TextInputType.emailAddress),
                          SizedBox(
                            height: 51,
                          ),
                          button("Save Details", orederhistory(), context)
                        ],
                      ),

                      // borderRadius: BorderRadius.circular(40)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
