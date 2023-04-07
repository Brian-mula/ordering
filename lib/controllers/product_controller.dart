import 'package:flutter/material.dart';

class ProductsController with ChangeNotifier {
  int _quantity = 1;
  int get quantity => _quantity;

  int addToCart(int quantity) {
    _quantity += quantity;
    return _quantity;
  }

  void checkQuantity(bool isAdding) {
    if (isAdding) {
      _quantity += 1;
      print("quantity:$_quantity");
    } else {
      _quantity -= 1;
    }
    notifyListeners();
  }
}
