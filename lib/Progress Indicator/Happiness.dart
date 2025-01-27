import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gen_z_life/Styles/Progress%20Bar/TextStyle.dart';

class happinessBar extends StatelessWidget {
  const happinessBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,

      body: // Progress Bar for Happiness
      Container(
        height: 35,
        width: 448,
        child: Row(
          children: [
            Text("     Happiness 😇 ",
                style: customTextStyle.headline,
            textAlign: TextAlign.right,),
            Container(
              height: 25,
              width: 250,
              child: LinearProgressIndicator(
                value: 0.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
