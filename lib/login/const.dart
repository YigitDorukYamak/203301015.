import 'package:flutter/material.dart';
const kBackgroundColor = Color(0xFF202020);
const kPrimaryColor = Color(0xFFFFBD73);
PreferredSizeWidget? metod() {
  return AppBar(
    title: Text(
      "Hoşgeldiniz",
      style: TextStyle(
        color: kPrimaryColor,
        fontSize: 20,
      ),
    ),
    elevation: 25.0,
    //shadowColor: kPrimaryColor, //gölge
    backgroundColor: Colors.black87, //bar rengi
    centerTitle: true,
    toolbarOpacity: 0.8,

  );
}