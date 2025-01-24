import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Buttons/activities.dart';
import '../Buttons/age.dart';
import '../Buttons/assets.dart';
import '../Buttons/occupation.dart';
import '../Buttons/relationship.dart';
import '../Text/ActivityText.dart';
import '../Text/AssetsText.dart';
import '../Text/OccupationText.dart';
import '../Text/RelationshipText.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  int age = 0;

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      width: double.infinity,
      height: 85,
      // padding:  EdgeInsets.all(16),
      child: Stack(
        children: [
          Container(
            width: 448,
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Center(
                    heightFactor: 20,
                    child: Column(
                      children: [
                        Container(
                            height: 60,
                            width: 100,
                            child: occupation()),
                        Container(
                          height: 23,
                          width: 100,
                          child: occupationText(),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 100,
                            child: assets(),
                          ),
                          Container(
                            height: 21,
                            child: assetsText(),
                          ),
                        ],
                      ),
                    )),
                //Age
                Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        height: 100,
                        width: 100,
                        child:
                        ageButton(onAgeIncrement: incrementAge))),
                Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 100,
                            child: relationship(),
                          ),
                          Container(
                            height: 21,
                            width: 100,
                            child: relationshipsText(),
                          )
                        ],
                      ),
                    )),
                Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 100,
                            child: activities(),
                          ),
                          Container(
                            height: 21,
                            child: activityText(),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
