import 'package:flutter/material.dart';

class StockMarketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Investments',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 5,
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print('Portfolio tapped'); // Replace with navigation or action
            },
            child: Card(
              child: ListTile(
                title: Text('Portfolio'),
                subtitle: Text('Your investment portfolio overview'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Bonds tapped'); // Replace with navigation or action
            },
            child: Card(
              child: ListTile(
                title: Text('Bonds'),
                subtitle: Text('Your bond investments'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Crypto tapped'); // Replace with navigation or action
            },
            child: Card(
              child: ListTile(
                title: Text('Crypto'),
                subtitle: Text('Your cryptocurrency investments'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Mutual Funds tapped'); // Replace with navigation or action
            },
            child: Card(
              child: ListTile(
                title: Text('Mutual Funds'),
                subtitle: Text('Your mutual fund investments'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Penny Stocks tapped'); // Replace with navigation or action
            },
            child: Card(
              child: ListTile(
                title: Text('Penny Stocks'),
                subtitle: Text('Your penny stock investments'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Stocks tapped'); // Replace with navigation or action
            },
            child: Card(
              child: ListTile(
                title: Text('Stocks'),
                subtitle: Text('Your stock investments'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
