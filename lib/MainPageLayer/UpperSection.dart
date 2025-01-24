import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermojiCircleAvatar.dart';
import 'package:unicons/unicons.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.indigo),
      child: Row(
        children: [
          //Avatar Container
          Container(
            height: 70,
            width: 70,
            color: Colors.indigo,
            child: FluttermojiCircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 40,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          //Flag and Money Bag Container
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue)),
                  child: CountryFlag.fromCountryCode(
                    'IN',
                    height: 20,
                    width: 20,
                    shape: Circle(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Icon(
                      UniconsLine.money_stack,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          //Name and Status Container
          Container(
            height: 70,
            width: 190,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    "Digesh Kapadiya",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  child: Text(
                    "Independently Wealthy",
                    style: TextStyle(color: Colors.blue),
                  ),
                  alignment: Alignment.topLeft,
                )
              ],
            ),
          ),

          //Money Container
          Container(
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: Text(
                      "\$37,926",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Bank Balance",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
