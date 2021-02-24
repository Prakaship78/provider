import 'package:flutter/material.dart';

class HomepageHelper extends ChangeNotifier {
  int counter = 0;

  int get getCounter => counter;

  incrementCounter() {
    counter++;
    notifyListeners();
  }

  decrementCounter() {
    counter--;
    notifyListeners();
  }

  reset() {
    counter = 0;
    notifyListeners();
  }
}
