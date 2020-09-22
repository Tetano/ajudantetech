
import 'package:flutter/cupertino.dart';

class Campos extends ChangeNotifier {
  bool obscure = false;


  bool obscureText(bool obscure) {
    if (obscure == false) {
      obscure = true;
      notifyListeners();
      print(obscure);
      return obscure;
    }
    else {
      obscure = false;
      notifyListeners();
      print(obscure);
      return obscure;
    }
  }
}