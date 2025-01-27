import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Go To Shopping'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildCategoryCard('Properties', Icons.house),
            _buildCategoryCard('Vehicles', Icons.directions_car),
            _buildCategoryCard('Jewelry', Icons.access_alarm),
            _buildDealerCard('Dealer 1', 'Expert in residential properties', Icons.person),
            _buildDealerCard('Dealer 2', 'Specializes in luxury homes', Icons.person),
            _buildDealerCard('Dealer 3', 'Experienced in commercial real estate', Icons.person),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, IconData icon) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, size: 40, color: Colors.blueAccent),
        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        onTap: () {
          // Action for the category tap
        },
      ),
    );
  }

  Widget _buildDealerCard(String name, String description, IconData icon) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, size: 40, color: Colors.blueAccent),
        title: Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        onTap: () {
          // Action for the dealer tap
        },
      ),
    );
  }
}
