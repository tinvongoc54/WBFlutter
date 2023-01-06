import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:warenb/models/product.dart';

class MockWarenBService {
  Future<List<Product>> getProductList() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final dataString = await _loadAsset('assets/sample_data/sample_products');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['products'] != null) {
      final products = <Product>[];
      json['products'].forEarch((v) {
        products.add(Product.fromJson(v));
      });
      return products;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
