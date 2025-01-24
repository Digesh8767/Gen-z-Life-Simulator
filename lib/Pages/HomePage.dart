import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:gen_z_life/Buttons/age.dart';
import 'package:gen_z_life/Buttons/assets.dart';
import 'package:gen_z_life/Buttons/occupation.dart';
import 'package:gen_z_life/Buttons/relationship.dart';
import 'package:gen_z_life/MainPageLayer/ButtonSection.dart';
import 'package:gen_z_life/MainPageLayer/UpperSection.dart';
import 'package:gen_z_life/Pages/logScreen.dart';
import 'package:gen_z_life/Progress%20Indicator/Happiness.dart';
import 'package:gen_z_life/Progress%20Indicator/Health.dart';
import 'package:gen_z_life/Progress%20Indicator/Smartness.dart';
import 'package:gen_z_life/Progress%20Indicator/Looks.dart';
import 'package:gen_z_life/Text/OccupationText.dart';
import 'package:gen_z_life/Text/RelationshipText.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/services.dart';

import '../Buttons/activities.dart';
import '../Text/ActivityText.dart';
import '../Text/AssetsText.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int age = 0;

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // leading: Padding(
        //   padding: const EdgeInsets.all(4),
        //   child: SizedBox(child: Image.asset('assets/logo/Logo1.png')),
        // ),
        title: Row(
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
            ]),
      ),
      body: SafeArea(
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Profile Function
              ProfileSection(),
              //Second Container
              Container(
                  height: 531,
                  width: double.infinity,
                  color: Colors.white,
                  child: logScreen(age: age)
              ),

              //Buttons Function
              Buttons(),


              //progress Bar
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Vx.black), color: Colors.black26),
                height: 202,
                child: Column(
                  children: [
                    Flexible(
                      child: Container(height: 50, child: happinessBar()),
                    ),
                    Flexible(
                      child: Container(
                        height: 50,
                        child: healthBar(),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 50,
                        child: smartnessBar(),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 50,
                        child: looksBar(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
