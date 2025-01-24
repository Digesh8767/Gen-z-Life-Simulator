import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget assetsText() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: Color.fromRGBO(5, 76, 207, 1)
    ),
    child: Text("Assets", style: TextStyle(
        fontSize: 14,
        color: Colors.white
    ),
      textAlign: TextAlign.center,),
  );
}