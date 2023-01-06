import 'package:flutter/material.dart';
import 'package:warenb/models/product.dart';

class ProductManager extends ChangeNotifier {
  final _productList = <Product>[];
  List<Product> get productList => List.unmodifiable(_productList);

  void setFavourite(int index, bool isFavourite) {
    final item = _productList[index];
    _productList[index] = item.copyWith(isFavourite: isFavourite);
    notifyListeners();
  }
}