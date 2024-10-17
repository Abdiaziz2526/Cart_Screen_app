import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextApp extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  TextApp({Key? key,
  this.size=30,
  required this.text, 
  this.color=Colors.black
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400
      ),

    );
  }
}