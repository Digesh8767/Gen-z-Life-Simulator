import 'package:flutter/foundation.dart';

class AgeProvider with ChangeNotifier {
  int _age = 25;  // Starting age
  List<String> _lifeEvents = [];

  // Getter for current age
  int get age => _age;
  
  // Getter for life events
  List<String> get lifeEvents => List.unmodifiable(_lifeEvents);

  // Initial events
  AgeProvider() {
    _addInitialEvents();
  }

  void _addInitialEvents() {
    // Age 25 events
    _lifeEvents = [
      'Age: 25 years',
      'I let loose with my tenant, Inaaya Devarukhkar, at a divorce party she hosted.',
      'My properties collected \$17,400 in rent in the last year.',
      'My casino\'s gambler threatened to go to the gambling board.',
      'I told her I\'d look into it.',
      'My casino earned \$461,433 in revenue last year.',
    ];
  }

  // Method to set specific age
  void setAge(int newAge) {
    _age = newAge;
    notifyListeners();
  }

  // Method to increment age
  void incrementCounter() {
    if (_age >= 27) {
      return; // Don't increment beyond age 27
    }
    
    _age++;
    List<String> newEvents = [];
    
    // Add new age announcement
    newEvents.add('Age: $_age years');
    
    // Add specific events for each age
    switch(_age) {
      case 26:
        newEvents.addAll([
          'I suspected that Maithreyi cheated on me.',
          'I confronted Maithreyi about my suspicion.',
          'But she denied it.',
          'Maithreyi argued with me because I suspected her of cheating.',
          'I assured her it wouldn\'t happen again.',
        ]);
        break;
      case 27:
        newEvents.addAll([
          'Maithreyi became pregnant with someone else\'s baby!',
          'I popped the Golden Pacifier in my mouth and dreamed of my dream baby.',
          'I took my child, Shudraka, on a first class vacation to Barbados.',
          'I did nothing after I witnessed a pickpocketing on my trip to Barbados.',
          'When I wasn\'t paying attention, my friend snuck up from behind and yanked up my undies.',
          'A wind chime has come into my possession.',
        ]);
        break;
    }
    
    // Add new events at the end of the list
    _lifeEvents.addAll(newEvents);
    
    notifyListeners();
  }

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  // Method to reset age
  void resetAge() {
    _age = 25;
    _lifeEvents.clear();
    _addInitialEvents();
    notifyListeners();
  }
}