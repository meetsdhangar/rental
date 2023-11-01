import 'package:flutter/material.dart';

commonContainer(text) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: 315,
      height: 45,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 17,
          top: 13,
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Color(0xFF787474),
              fontSize: 15,
              fontWeight: FontWeight.w400),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0x30CCCCCC),
        borderRadius: BorderRadius.circular(13),
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
