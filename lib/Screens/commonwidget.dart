import 'package:flutter/material.dart';

commonContainer(text, keyboardtype) {
  return TextField(
    keyboardType: keyboardtype,
    decoration: InputDecoration(
      filled: true,
      fillColor: Color(0x30CCCCCC),
      contentPadding: EdgeInsets.only(top: 13, bottom: 13, left: 20),
      hintText: text,
      hintStyle: TextStyle(color: Color(0xFF787474)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: BorderSide(color: Color(0x30CCCCCC), width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: BorderSide(color: Colors.white, width: 1),
      ),
    ),
  );
}

button(text, page, context) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => page,
      ));
    },
    child: Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ),
      width: 315,
      height: 45,
      decoration: BoxDecoration(
          color: Color(0xFF1B3E41), borderRadius: BorderRadius.circular(40)),
    ),
  );
}
