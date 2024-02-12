import 'package:flutter/material.dart';

class SayacModel extends ChangeNotifier {
  int _sayac = 0;
  int get sayac => _sayac;

  void sayacArttir() {
    _sayac++;
    notifyListeners(); // Durumu değiştiren ve tüm dinleyicilere değişiklikleri bildiren önceden tanimli bir ChangeNotifier metodu.
  }
}
