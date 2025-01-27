import 'package:flutter/material.dart';
import 'dart:math';

class StatsProvider with ChangeNotifier {
  double _health = 0.8;
  double _happiness = 0.7;
  double _intelligence = 0.6;
  double _looks = 0.5;
  int _bankBalance = 0; // Initialize bank balance to 0
  
  // Keep track of age for more realistic changes
  int _currentAge = 18;

  double get health => _health;
  double get happiness => _happiness;
  double get intelligence => _intelligence;
  double get looks => _looks;
  int get bankBalance => _bankBalance; // Getter for bank balance

  void updateStats(int newAge) {
    final random = Random();
    _currentAge = newAge;
    
    // Health: Peaks in 20s, gradually declines after 30
    if (_currentAge < 25) {
      _health = min(1.0, _health + random.nextDouble() * 0.05);
    } else if (_currentAge < 30) {
      _health = max(0.3, min(1.0, _health + (random.nextDouble() * 0.03 - 0.01)));
    } else {
      _health = max(0.3, min(1.0, _health - (random.nextDouble() * 0.05)));
    }
    
    // Happiness: Varies with life stages
    if (_currentAge < 25) {
      // Young adult - generally happy but with ups and downs
      _happiness = max(0.4, min(1.0, _happiness + (random.nextDouble() * 0.2 - 0.1)));
    } else if (_currentAge < 35) {
      // Career building - more stable happiness
      _happiness = max(0.5, min(1.0, _happiness + (random.nextDouble() * 0.1 - 0.05)));
    } else if (_currentAge < 50) {
      // Mid-life - generally more content
      _happiness = max(0.6, min(1.0, _happiness + (random.nextDouble() * 0.08 - 0.04)));
    } else {
      // Later life - wisdom brings more stable happiness
      _happiness = max(0.7, min(1.0, _happiness + (random.nextDouble() * 0.06 - 0.02)));
    }
    
    // Intelligence: Increases rapidly in youth, then more slowly
    if (_currentAge < 25) {
      // Rapid learning in young adulthood
      _intelligence = min(1.0, _intelligence + random.nextDouble() * 0.1);
    } else if (_currentAge < 40) {
      // Slower but steady growth
      _intelligence = min(1.0, _intelligence + random.nextDouble() * 0.05);
    } else if (_currentAge < 60) {
      // Maintaining intelligence
      _intelligence = max(0.6, min(1.0, _intelligence + (random.nextDouble() * 0.02 - 0.01)));
    } else {
      // Slight decline possible in later years
      _intelligence = max(0.5, min(1.0, _intelligence - random.nextDouble() * 0.02));
    }
    
    // Looks: Peak in 20s-30s, gradual change after
    if (_currentAge < 30) {
      // Prime years
      _looks = min(1.0, _looks + random.nextDouble() * 0.08);
    } else if (_currentAge < 40) {
      // Maintaining looks
      _looks = max(0.4, min(1.0, _looks + (random.nextDouble() * 0.04 - 0.02)));
    } else if (_currentAge < 50) {
      // Gradual decline
      _looks = max(0.3, min(1.0, _looks - random.nextDouble() * 0.04));
    } else {
      // More noticeable decline
      _looks = max(0.2, min(1.0, _looks - random.nextDouble() * 0.06));
    }

    notifyListeners();
  }

  void setBankBalance(int amount) {
    _bankBalance = amount.toInt(); // Setter for bank balance
    notifyListeners(); // Notify listeners about the change
  }

  void resetStats() {
    _health = 0.8;
    _happiness = 0.7;
    _intelligence = 0.6;
    _looks = 0.5;
    _bankBalance = 0;
    _currentAge = 18;
    notifyListeners();
  }
}
