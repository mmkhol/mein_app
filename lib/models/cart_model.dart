import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int nudelsuppe = 0;
  int festival = 0;
  void addNudlesuppe() {
    nudelsuppe++;
    notifyListeners();
  }

  void removeNudelsuppe() {
    if (nudelsuppe > 0) {
      nudelsuppe--;
      notifyListeners();
    }
  }

//Aus Warenkorb entfernen
  void clearNudlesuppe() {
    nudelsuppe = 0;
    notifyListeners();
  }

  void addFestival() {
    festival++;
    notifyListeners();
  }

  void removeFestival() {
    if (festival > 0) {
      festival--;
      notifyListeners();
    }
  }

  void clearFestival() {
    festival = 0;
    notifyListeners();
  }

  int get totalItem => nudelsuppe + festival;
  int get totalPreis => nudelsuppe * 18 + festival * 45;
}
