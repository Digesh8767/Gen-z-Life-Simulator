import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji_assets/fluttermojimodel.dart';
import 'package:gen_z_life/Styles/Progress%20Bar/TextStyle.dart';
import 'package:unicons/icons/line/university.dart';
import 'package:unicons/unicons.dart';

class OccupationMenu extends StatefulWidget {
  const OccupationMenu({super.key});

  @override
  State<OccupationMenu> createState() => _OccupationMenuState();
}

class _OccupationMenuState extends State<OccupationMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                            "assets/OccupationIcon/graduation.png")),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Education", style: HeadingText.bigText),
                        Text(
                          "Go back to school",
                          style: NormalText.normal,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
