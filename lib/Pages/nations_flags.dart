import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart'; // Example package for displaying flags

class NationsFlags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nations Flags'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          // Example flags, replace with actual country codes
          ClipOval(
            child: CountryFlag.fromCountryCode(
              'US', // United States
              height: 30,
              width: 30,
            ),
          ),
          ClipOval(
            child: CountryFlag.fromCountryCode(
              'CA', // Canada
              height: 30,
              width: 30,
            ),
          ),
          ClipOval(
            child: CountryFlag.fromCountryCode(
              'GB', // United Kingdom
              height: 30,
              width: 30,
            ),
          ),
          ClipOval(
            child: CountryFlag.fromCountryCode(
              'FR', // France
              height: 30,
              width: 30,
            ),
          ),
          // Add more flags as needed
        ],
      ),
    );
  }
}
