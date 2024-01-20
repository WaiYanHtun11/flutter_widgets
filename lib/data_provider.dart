import 'package:flutter/cupertino.dart';

class DataProvider with ChangeNotifier{
  int a = 0;
  int b = 0;
  int sum = 0;
  int getTotal(){
    sum = a + b;
    return sum;
  }

  void updateA(bool isPlus){
    isPlus ? a++ : a--;
    notifyListeners();
  }
  void updateB(bool isPlus){
    isPlus ? b++ : b--;
    notifyListeners();
  }

}