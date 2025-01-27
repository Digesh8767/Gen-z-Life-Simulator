import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4)),
            // alignment: Alignment.topLeft,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  alignment: Alignment.center,
                  shape: CircleBorder(),
                  padding: EdgeInsets.only(right: 2),
                ),
                child: Icon(
                  CupertinoIcons.line_horizontal_3,
                  size: 25,
                  color: Colors.white,
                )),
          ),
          SizedBox(
              height: 50,
              width: 50,
              child: Image.asset('assets/logo/Logo1.png')),
          Text(
            "GeNZLiFE",
            style: TextStyle(
              // color: Colors.yellow,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              foreground: Paint()
                ..shader = LinearGradient(
                    colors: [Colors.yellow, Colors.orange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)
                    .createShader(Rect.fromLTWH(0, 0, 200, 100)),
              shadows: [
                Shadow(
                    blurRadius: 10.0,
                    color: Colors.black,
                    offset: Offset(2.0, 2.0))
              ],
              fontFamily: GoogleFonts.oswald().fontFamily,
            ),
          )
        ]);
  }
}
