import 'package:flutter/material.dart';

class AppController extends ChangeNotifier{
  String name = "";
  int count = 0;
  int currentIndex = 0;

  setIndex(int index){
    currentIndex = index;
    notifyListeners();
  }

  addCount(){
    count++;
    notifyListeners();
  }

  setName(String name1){
    name = name1;
    notifyListeners();
  }

}