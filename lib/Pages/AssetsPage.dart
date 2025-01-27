import 'package:flutter/material.dart';
import '../theme_provider.dart'; // Importing theme provider
import 'StockMarketPage.dart'; // Import the StockMarketPage
import 'PropertiesPage.dart'; // Import the PropertiesPage
import 'ShoppingPage.dart'; // Import the ShoppingPage

class AssetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assets',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildAssetCard(context, Icons.money, 'Finances'),
            _buildAssetCard(context, Icons.trending_up, 'Investments'),
            _buildAssetCard(context, Icons.house, 'Properties'),
            _buildAssetCard(context, Icons.directions_car, 'Cars'),
            _buildAssetCard(context, Icons.social_distance, 'Social Media'),
            _buildAssetCard(context, Icons.shopping_cart, 'Go To Shopping'), // Add this line to the ListView
          ],
        ),
      ),
    );
  }

  Widget _buildAssetCard(BuildContext context, IconData icon, String label) {
    // Determine card color based on theme mode
    Color cardColor = Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.grey[850]!;

    // Set icon color based on theme mode
    Color iconColor = Theme.of(context).brightness == Brightness.light
        ? Colors.blue
        : Colors.white;

    return Card(
      color: cardColor,
      elevation: 4,
      child: InkWell(
        onTap: () {
          if (label == 'Finances') {
            // Show financial summary alert
            _showFinancialAlert(context);
          } else if (label == 'Investments') {
            // Navigate to StockMarketPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StockMarketPage()),
            );
          } else if (label == 'Properties') {
            // Navigate to PropertiesPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PropertiesPage()),
            );
          } else if (label == 'Go To Shopping') {
            // Navigate to ShoppingPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShoppingPage()),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, color: iconColor),
              SizedBox(width: 16),
              Text(label, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }

  void _showFinancialAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Financial Summary'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Bank Balance: \$10000.00'),
                Text('Investments: \$0.00'),
                Text('Income per Year: \$50000.00'),
                Text('Tax Rate: 15.0%'),
                Text('Monthly Outflow: \$2000.00'),
                Text('Assets: \$150000.00'),
                Text('Liabilities: \$50000.00'),
                Text('Net Worth: \$100000.00'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
