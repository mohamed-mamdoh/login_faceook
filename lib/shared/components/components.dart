
import 'package:flutter/material.dart';
Widget defaultButton({
  double width=double.infinity,
  Color background=Colors.white,
    required VoidCallback function,
  required String text,

}) =>Container(
  color: background,
  width: width,

  child: MaterialButton(
    onPressed:function,
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20.0,
        fontWeight: FontWeight.w900,
      ),
    ),

  ),
);

