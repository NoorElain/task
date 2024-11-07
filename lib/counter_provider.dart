import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
{
  int num =0;
  void increment() {
    num++;
    notifyListeners();
  }
  void decrement() {
    if(num!=0)
      {
        num--;
      }
    notifyListeners();
  }
  void refresh(){
    num = 0;
    notifyListeners();
  }
}