import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepickerdemo extends StatefulWidget {
  const Imagepickerdemo({super.key});

  @override
  State<Imagepickerdemo> createState() => _ImagepickerdemoState();
}

File? img;

class _ImagepickerdemoState extends State<Imagepickerdemo> {
  selectImage() async {
    final myimage = await ImagePicker().pickImage(source: ImageSource.camera);

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
        body: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  selectImage();
                },
                child: Container(
                  height: 50,
                  width: 80,
                  color: Colors.yellow,
                  child: Center(
                    child: Text("Select"),
                  ),
                ),
              ),
              img == null
                  ? Container(
                      child: Image.asset("assets/images/prof.png"),
                    )
                  : Container(
                      height: 500,
                      width: 500,
                      child: Image.file(img!),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
