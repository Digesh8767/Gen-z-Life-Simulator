import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gen_z_life/Buttons/age.dart';
import 'package:gen_z_life/Providers/age_value_provider.dart';
import 'package:gen_z_life/Styles/Progress%20Bar/TextStyle.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:velocity_x/velocity_x.dart';

class logScreen extends StatefulWidget {

  logScreen({super.key,});

  @override
  State<logScreen> createState() => _logScreenState();
}

class _logScreenState extends State<logScreen> {

  int age = 0;

  //Method to generate list of age widgets
  List<Widget> generateAgeList(int age) {
    List<Widget> ageWidget = [];
    for (int i = 0; i <= age; i++) {
      ageWidget.add(
        Text(
          "Age: $i years",
          style: splashScreenText.splashScreen,
        ),
      );
    }
    return ageWidget;
  }


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;


    int age = Provider.of<AgeProvider>(context).age;

    return Scaffold(
      body: Container(
        height: screenHeigth,
        width: screenWidth,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: generateAgeList(age),
                )
            )
        ),
      ),

    );

  }
}
