import 'package:flutter/cupertino.dart';
import 'package:gen_z_life/Progress%20Indicator/Happiness.dart';
import 'package:gen_z_life/Progress%20Indicator/Health.dart';
import 'package:gen_z_life/Progress%20Indicator/Looks.dart';
import 'package:gen_z_life/Progress%20Indicator/Smartness.dart';

class ProgressBarAll extends StatelessWidget {
  const ProgressBarAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: happinessBar()),
        Expanded(child: healthBar()),
        Expanded(child: smartnessBar()),
        Expanded(child: looksBar())
      ],
    );
  }
}
