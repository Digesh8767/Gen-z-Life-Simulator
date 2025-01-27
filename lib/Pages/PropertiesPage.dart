import 'package:flutter/material.dart';

class PropertiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Properties'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildPropertyCard(context, 'Property 1', 'Description of Property 1', Icons.house),
            _buildPropertyCard(context, 'Property 2', 'Description of Property 2', Icons.house),
            _buildDealerCard('Dealer 1', 'Expert in residential properties', Icons.person),
            _buildDealerCard('Dealer 2', 'Specializes in luxury homes', Icons.person),
            _buildDealerCard('Dealer 3', 'Experienced in commercial real estate', Icons.person),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to add new property
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

  Widget _buildPropertyCard(BuildContext context, String title, String description, IconData icon) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          // Navigate to property details page or perform action
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.blueAccent),
              SizedBox(height: 8),
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text(description, textAlign: TextAlign.center),
            ],
          ),
        ),
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
