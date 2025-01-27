import 'package:flutter/material.dart';
import 'package:gen_z_life/Pages/SettingsDetailPage.dart';
import 'package:gen_z_life/Pages/ThemeChanger.dart';
import 'dart:math';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final List<String> names = ['Alice', 'Bob', 'Charlie', 'Diana'];
  final List<String> genders = ['Male', 'Female'];
  final List<String> countries = ['India', 'USA', 'Canada'];
  final Map<String, List<String>> cities = {
    'India': ['Delhi', 'Mumbai', 'Bangalore'],
    'USA': ['New York', 'Los Angeles', 'Chicago'],
    'Canada': ['Toronto', 'Vancouver', 'Montreal'],
  };

  String randomName = '';
  String randomGender = '';
  String randomCountry = '';
  String randomCity = '';

  void generateRandomLife() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String firstName = '';
        String lastName = '';
        String selectedGender = genders[0];
        String selectedCountry = countries[0];
        String selectedCity = cities[selectedCountry]![0];

        return AlertDialog(
          title: Text(
            'Create New Life',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  onChanged: (value) {
                    firstName = value;
                  },
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  onChanged: (value) {
                    lastName = value;
                  },
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Gender: '),
                    Radio(
                      value: 'Male',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value.toString();
                        });
                      },
                    ),
                    Text('Male'),
                    Radio(
                      value: 'Female',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value.toString();
                        });
                      },
                    ),
                    Text('Female'),
                  ],
                ),
                DropdownButton<String>(
                  value: selectedCountry,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCountry = newValue!;
                      selectedCity = cities[selectedCountry]![0]; // Reset city
                    });
                  },
                  items:
                      countries.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/flags/${value.toLowerCase()}.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 10),
                          Text(value),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                DropdownButton<String>(
                  value: selectedCity,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCity = newValue!;
                    });
                  },
                  items: cities[selectedCountry]!
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  randomName = firstName + ' ' + lastName;
                  randomGender = selectedGender;
                  randomCountry = selectedCountry;
                  randomCity = selectedCity;
                });
                Navigator.of(context).pop();
              },
              child: Text('Create'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: 'Main ',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..shader = const LinearGradient(
                  colors: <Color>[Colors.green, Colors.blue],
                ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Menu',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          ListTile(
            title: Text(
              'New Life',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: generateRandomLife,
          ),
          ListTile(
            title: Text(
              'Themes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThemeChanger()),
              );
            },
          ),
        ],
      ),
    );
  }
}
