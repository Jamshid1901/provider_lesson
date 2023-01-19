import 'package:flutter/material.dart';

class TwoController extends ChangeNotifier{
  int count = 0;

  addCount(){
    count++;
    notifyListeners();
  }

}