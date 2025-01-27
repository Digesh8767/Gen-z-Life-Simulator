import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:velocity_x/velocity_x.dart';

class assets extends StatelessWidget {
  const assets({super.key});


  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height:screenHeight *0.06,
          padding: EdgeInsets.only(left: 0),
          color: Color.fromRGBO(5, 76, 207, 1.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  shape: CircleBorder(),
                  backgroundColor: Color.fromRGBO(66, 214, 246, 1.0),
                  padding: EdgeInsets.all(10)),
              child: Icon(
                UniconsLine.moneybag,
                size: 25,
                color: Colors.white,
              )),
        ),
        Container(
          padding: EdgeInsets.only(left: 10,right: 10,bottom: 3),
          decoration: BoxDecoration(color: Color.fromRGBO(5, 76, 207, 1)),
          child: Text(
            "Assets",
            style: TextStyle(color: Colors.white,),
          ),
        )
      ],
    );
  }
}
