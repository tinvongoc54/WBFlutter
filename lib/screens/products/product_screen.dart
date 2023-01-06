import 'package:flutter/material.dart';
import 'package:warenb/api/mock_warenb_service.dart';
import 'package:warenb/models/product.dart';
import 'package:warenb/screens/home/components/products_grid_view.dart';

class ProductScreen extends StatelessWidget {
  final service = MockWarenBService();

  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: service.getProductList(),
      builder: (context, AsyncSnapshot<List<Product>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ProductsGridView(products: snapshot.data ?? []);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

}