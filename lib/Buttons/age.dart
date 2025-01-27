import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gen_z_life/Pages/logScreen.dart';
import 'package:gen_z_life/Providers/age_value_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class ageButton extends StatelessWidget {
  const ageButton({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(5, 76, 207, 1.0),
      ),
      padding: EdgeInsets.only(),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius: BorderRadius.circular(60)),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(70),
                child: InkWell(
                  onTap: () {
                    Provider.of<AgeProvider>(context).incrementCounter();
                  },
                  splashColor: Colors.grey.withBrightness,
                  highlightColor: Colors.grey.withBrightness,
                  child: Container(
                    width: 75,
                    height: 75,
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(70),
                        boxShadow: [
                          BoxShadow(blurRadius: 12, color: Colors.black26)
                        ]),
                    child: Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class buttonController {
  final ValueNotifier<bool> isButtonPressed = ValueNotifier<bool>(false);

  void onButtonPressed() {
    isButtonPressed.value = true;
  }
}
