import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: const BoxDecoration(color: Colors.indigo),
      child: Column(
        children: [
          Row(
            children: [
              FluttermojiCircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 40,
              ),
              const SizedBox(width: 12),

              //Container for Nation Flag
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  shape: BoxShape.circle,
                ),
                child: CountryFlag.fromCountryCode(
                  'IN',
                  height: 20,
                  width: 20,
                  borderRadius: 10,
                ),
              ),
              const SizedBox(width: 12),

              //Text for Player name
              Text(
                "Digesh Kapadiya",
                style: context.textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          // Progress Bars
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Health'),
                  Container(
                    width: 100,
                    child: LinearProgressIndicator(value: 0.7, minHeight: 8), // Example value
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Happiness'),
                  Container(
                    width: 100,
                    child: LinearProgressIndicator(value: 0.5, minHeight: 8), // Example value
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Intelligence'),
                  Container(
                    width: 100,
                    child: LinearProgressIndicator(value: 0.6, minHeight: 8), // Example value
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
