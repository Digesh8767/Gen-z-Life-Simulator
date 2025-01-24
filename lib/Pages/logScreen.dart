import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gen_z_life/Buttons/age.dart';
import 'package:gen_z_life/Styles/Progress%20Bar/TextStyle.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:velocity_x/velocity_x.dart';

class logScreen extends StatefulWidget {
  final int age;

  logScreen({super.key, required this.age});

  @override
  State<logScreen> createState() => _logScreenState();
}

class _logScreenState extends State<logScreen> {
  int _currentAge = 0;
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  //Method to generate list of age widgets
  List<Widget> generateAgeList() {
    List<Widget> ageWidget = [];
    for (int i = 0; i <= widget.age; i++) {
      ageWidget.add(
        Text(
          "Age: $i years",
          style: splashScreenText.splashScreen,
        ),
      );
    }
    return ageWidget;
  }

  void _incrementAge() {
    if (_currentAge < widget.age) {
      setState(() {
        _currentAge++;
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
            controller: _scrollController,
            child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: generateAgeList(),

                )
            )
        ),
      ),

    );

  }
}
