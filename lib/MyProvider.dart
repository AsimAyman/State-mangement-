import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier{
  int counter=0;
  increment(){
    counter++;
    notifyListeners();
  }
}