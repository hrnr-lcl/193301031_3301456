import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget header(String title, context) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    SizedBox(height: 29),
    // geri dön ikonu
    GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back, color: Colors.black, size: 27),
    ),

    // Kategoriler
    SizedBox(height: 24),

    Text(
      title,
      style: TextStyle(fontSize: 36, color: Color(0xff2d2b6f), fontWeight: FontWeight.bold),
    )
  ]);
}
