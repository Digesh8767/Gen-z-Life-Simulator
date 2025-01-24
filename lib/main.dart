import 'package:flutter/material.dart';
import 'package:gen_z_life/My%20Theme/themes.dart';
import 'package:gen_z_life/Pages/HomePage.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(const MyApp());
}
void hideStatusBar(){
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    hideStatusBar();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      title: "Gen-z Life",
        home: SafeArea(
            child: home_page()),
    );
  }
}


