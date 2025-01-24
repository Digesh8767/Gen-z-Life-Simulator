import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget relationshipsText() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: Color.fromRGBO(5, 76, 207, 1)
    ),
    child: Text("Relationships", style: TextStyle(
        fontSize: 13,
        color: Colors.white
    ),
      textAlign: TextAlign.center,),
  );
}