import 'package:flutter/material.dart';

class FinancesPage extends StatelessWidget {
  final double bankBalance;
  final double investments;
  final double incomePerYear;
  final double taxRate;
  final double monthlyOutflow;
  final double assets;
  final double liabilities;
  final double netWorth;

  FinancesPage({
    required this.bankBalance,
    required this.investments,
    required this.incomePerYear,
    required this.taxRate,
    required this.monthlyOutflow,
    required this.assets,
    required this.liabilities,
    required this.netWorth,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finances'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bank Balance: \$${bankBalance.toStringAsFixed(2)}'),
            Text('Investments: \$${investments.toStringAsFixed(2)}'),
            Text('Income per Year: \$${incomePerYear.toStringAsFixed(2)}'),
            Text('Tax Rate: ${taxRate.toStringAsFixed(2)}%'),
            Text('Monthly Outflow: \$${monthlyOutflow.toStringAsFixed(2)}'),
            Text('Assets: \$${assets.toStringAsFixed(2)}'),
            Text('Liabilities: \$${liabilities.toStringAsFixed(2)}'),
            Text('Net Worth: \$${netWorth.toStringAsFixed(2)}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showFinancialAlert(context);
              },
              child: Text('Show Financial Summary'),
            ),
          ],
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
                Text('Bank Balance: \$${bankBalance.toStringAsFixed(2)}'),
                Text('Investments: \$${investments.toStringAsFixed(2)}'),
                Text('Income per Year: \$${incomePerYear.toStringAsFixed(2)}'),
                Text('Tax Rate: ${taxRate.toStringAsFixed(2)}%'),
                Text('Monthly Outflow: \$${monthlyOutflow.toStringAsFixed(2)}'),
                Text('Assets: \$${assets.toStringAsFixed(2)}'),
                Text('Liabilities: \$${liabilities.toStringAsFixed(2)}'),
                Text('Net Worth: \$${netWorth.toStringAsFixed(2)}'),
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
