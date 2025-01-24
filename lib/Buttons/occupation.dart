import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gen_z_life/OccupationMenu/OccupationMenu.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

class occupation extends StatefulWidget {
  const occupation({super.key});

  @override
  State<occupation> createState() => _occupationState();
}

class _occupationState extends State<occupation> {
  double scaleFactor = 1;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        width: double.infinity,
        color: Color.fromRGBO(5, 76, 207, 1.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      print("object");
                      // Get.to(() =>  OccupationMenu() ,transition: Transition.zoom );
                    },
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        shape: CircleBorder(),
                        backgroundColor: Color.fromRGBO(66, 214, 246, 1.0),
                        padding: EdgeInsets.all(12)),
                    child: Icon(
                      CupertinoIcons.briefcase_fill,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
