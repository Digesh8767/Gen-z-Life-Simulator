import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Buttons/activities.dart';
import '../Buttons/age.dart';
import '../Buttons/assets.dart';
import '../Buttons/occupation.dart';
import '../Buttons/relationship.dart';
import '../Text/ActivityText.dart';
import '../Text/AssetsText.dart';
import '../Text/OccupationText.dart';
import '../Text/RelationshipText.dart';
import 'package:flutter/foundation.dart';

class ButtonsSection extends StatefulWidget {
  const ButtonsSection({super.key});

  @override
  State<ButtonsSection> createState() => _ButtonsSectionState();
}

class _ButtonsSectionState extends State<ButtonsSection> {

  int age = 0;

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;


    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      width: double.infinity,
      height: 85,
      // padding:  EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                    height: screenHeight*0.06,
                    child: Expanded(child: occupation())),
                Expanded(child: occupationText()),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                  height: screenHeight*0.06,
                  child: Expanded(child: assets())),
              // Expanded(child: assetsText())
            ],
          ),
          //Age
          ageButton(),
          Expanded(
            child: Column(
              children: [
                Expanded(child: relationship()),
                Expanded(child: relationshipsText()),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Expanded(child: activities()),
                Expanded(child: activityText()),

              ],
            ),
          )
          ],
      ),
    );
  }
}
