import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class activities extends StatelessWidget {
  const activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 149,
        color: Color.fromRGBO(5, 76, 207, 1.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        shape: CircleBorder(),
                        backgroundColor: Color.fromRGBO(66, 214, 246, 1.0),
                        padding: EdgeInsets.all(12)),
                    child: Icon(
                      Icons.more_horiz,
                      size: 30,
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
