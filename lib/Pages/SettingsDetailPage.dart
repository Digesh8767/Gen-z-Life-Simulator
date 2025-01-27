import 'package:flutter/material.dart';

class SettingsDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          ListTile(
            title: Text(
              'Change Theme',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // Define action for Change Theme
            },
          ),
          ListTile(
            title: Text(
              'Account Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // Define action for Account Settings
            },
          ),
          ListTile(
            title: Text(
              'Privacy Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // Define action for Privacy Settings
            },
          ),
          ListTile(
            title: Text(
              'Notification Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // Define action for Notification Settings
            },
          ),
        ],
      ),
    );
  }
}
