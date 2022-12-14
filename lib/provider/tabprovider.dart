import 'package:flutter/material.dart';

class Tabprovider extends ChangeNotifier {
  int current = 0;

  int get value => current;

  Tabprovider(this.current);

  void changetab(int index) {
    current = index;

    notifyListeners();
  }
}
