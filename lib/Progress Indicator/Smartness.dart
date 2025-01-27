import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gen_z_life/Styles/Progress%20Bar/TextStyle.dart';

class smartnessBar extends StatelessWidget {
  const smartnessBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,

      body: Container(
        width: 448,
        height: 25,
        child: Row(
          children: [
            Container(
                child: Text("     Smartness 🧠 ",
                    style: customTextStyle.headline,
                textAlign: TextAlign.right,)),
            Container(
              height: 25,
              width: 250,
              child: LinearProgressIndicator(
                value: 0.1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
