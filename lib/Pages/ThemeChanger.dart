import 'package:flutter/material.dart';
import 'package:gen_z_life/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeChanger extends StatefulWidget {
  @override
  _ThemeChangerState createState() => _ThemeChangerState();
}

class _ThemeChangerState extends State<ThemeChanger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'THEMES',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              'Light Mode',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            leading: Radio<bool>(
              value: false,
              groupValue: context.watch<ThemeProvider>().isDarkMode,
              onChanged: (value) {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
            ),
          ),
          ListTile(
            title: Text(
              'Dark Mode',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            leading: Radio<bool>(
              value: true,
              groupValue: context.watch<ThemeProvider>().isDarkMode,
              onChanged: (value) {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
            ),
          ),
        ],
      ),
    );
  }
}
