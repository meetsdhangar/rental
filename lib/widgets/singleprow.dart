import 'package:flutter/material.dart';

singlep(text, txt) {
  return Row(
    children: [
      Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 0.11,
          letterSpacing: 0.84,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        txt,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.84,
        ),
      ),
    ],
  );
}

scontainer(image) {
  return Container(
    width: 315,
    height: 229,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Color(0x4CCCCCCC), width: 1)),
    child: Container(
      width: 285,
      height: 201,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
}
