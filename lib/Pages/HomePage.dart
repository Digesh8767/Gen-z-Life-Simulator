import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/age_value_provider.dart';
import '../Providers/stats_provider.dart';
import 'OccupationPage.dart';
import 'MainMenu.dart'; // Updated import
import 'AssetsPage.dart'; // Import AssetsPage
import 'package:google_fonts/google_fonts.dart' as googleFonts;
import '../Widgets/profile_avatar.dart';
import '../Widgets/common_app_bar.dart';
import 'package:country_flags/country_flags.dart'; // Import CountryFlags package

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  bool _isOccupationOpen = false;
  final List<String> _lifeEvents = [
    'Age: 18',
    'Started College',
    'Got first job',
    'Bought a car',
  ];
  List<int> ages = []; // List to store ages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenu()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(0),
                backgroundColor: Theme.of(context).primaryColor,
                side: const BorderSide(color: Colors.white),
              ),
              child: const Icon(
                Icons.list,
                size: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8), // Space between button and title
            RichText(
              text: TextSpan(
                text: 'GENz',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                children: <TextSpan>[
                  // Add more styling if needed
                  TextSpan(
                    text: 'LiFE',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          // Profile Section
          Card(
            elevation: 4,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const ProfileAvatar(
                    size: 40,
                    glowColor: Colors.green,
                  ),
                  const SizedBox(width: 16),
                  // Indian Flag
                  ClipOval(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white, width: 2), // White border
                        shape: BoxShape.circle,
                      ),
                      child: CountryFlag.fromCountryCode(
                        'IN', // India
                        height: 25,
                        width: 25,
                        borderRadius: 100,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anik Dhibar',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          'Independently Wealthy',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$37,926',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        'Bank Balance',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Display Section
          Expanded(
            child: Consumer<AgeProvider>(
              builder: (context, ageProvider, child) {
                return Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align to the left
                  children: [
                    ages.isNotEmpty
                        ? _buildAgeDisplay()
                        : Text('No ages recorded'),
                  ],
                );
              },
            ),
          ),

          // Button Section
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNavItem(Icons.work, 'Occupation'),
                  _buildNavItem(Icons.account_balance_wallet, 'Assets'),
                  Consumer<AgeProvider>(
                    builder: (context, ageProvider, _) =>
                        _buildAgeButton(context, ageProvider),
                  ),
                  _buildNavItem(Icons.favorite_border, 'Relationships'),
                  _buildNavItem(Icons.sports_basketball, 'Activities'),
                ],
              ),
            ),
          ),

          // Progress Bar Indication
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("😁"),
                    SizedBox(width: 10),
                    _buildProgressBar('Happiness', 75)
                  ],
                ),
                Row(
                  children: [
                    Text("💖"),
                    SizedBox(width: 35),
                    _buildProgressBar('Health', 85),
                  ],
                ),
                Row(
                  children: [
                    Text("🧠"),
                    SizedBox(width: 7),
                    _buildProgressBar('Smartness', 90),
                  ],
                ),
                Row(
                  children: [
                    Text("🌤️"),
                    SizedBox(width: 38),
                    _buildProgressBar('Looks', 70),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAgeDisplay() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: ages.isNotEmpty
          ? ages.map((age) => Text('Age: $age')).toList()
          : [Text('No ages recorded')],
    );
  }

  Widget _buildProgressBar(String label, double value) {
    // Determine text color based on theme mode
    Color textColor = Theme.of(context).brightness == Brightness.light
        ? Colors.black
        : Colors.white;

    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items
        children: [
          Text(label, style: TextStyle(color: textColor)), // Label color
          const SizedBox(width: 10),
          Container(
            height: 20, // Set height
            width: 200, // Set width
            child: LinearProgressIndicator(
              value: value / 100,
              backgroundColor: Colors.grey[300], // Light grey background
              color: Colors.green, // Progress color
            ),
          ),
          const SizedBox(width: 10),
          Text('${value.toInt()}%',
              style: TextStyle(color: textColor)), // Percentage color
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label) {
    if (label == 'Assets') {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AssetsPage()),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Icon(icon, color: Colors.green)),
            Text(label, style: TextStyle(color: Colors.green)),
          ],
        ),
      );
    } else {
      return InkWell(
        onTap: () {
          // Define navigation logic here if needed
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Icon(icon, color: Colors.green),
            ),
            Text(label, style: TextStyle(color: Colors.green)),
          ],
        ),
      );
    }
  }

  Widget _buildAgeButton(BuildContext context, AgeProvider provider) {
    return ElevatedButton(
      onPressed: () {
        // Define age increment logic here
      },
      child: const Icon(Icons.add),
    );
  }
}

// Add logic to fetch financial data for the Finances page
// This can include fetching from providers or APIs as necessary
