import 'package:flutter/cupertino.dart';
import 'package:warenb/screens/home/components/product_card.dart';

import '../../../models/product.dart';

class ProductsGridView extends StatelessWidget {
  final List<Product> products;

  const ProductsGridView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    );
  }

}