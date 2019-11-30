import 'package:flutter/material.dart';

class MyCart extends ChangeNotifier {
  List<String> _list = [];
  int _price = 0;

  List<String> get list => _list;
  int get price => _price;


  void addItem(String item){
    _list.add(item);
    _price += 10;
    notifyListeners();
  }

    void removeItem(String item){
    _list.remove(item);
    _price -= 10;
    notifyListeners();
  }

  void clearCart(){
    _list = [];
    _price = 0;
    notifyListeners();
  }
}
