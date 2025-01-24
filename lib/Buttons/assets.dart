import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class assets extends StatelessWidget {
  const assets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        color:Color.fromRGBO(5, 76, 207, 1.0),
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
                    child: Icon(Icons.wallet , size: 30,color: Colors.white),

                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.indigo,
                        shape: CircleBorder(),
                        alignment: Alignment.center,
                        backgroundColor: Color.fromRGBO(66, 214, 246, 1.0),
                        padding: EdgeInsets.all(12)
                    ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
