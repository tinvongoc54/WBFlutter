import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warenb/constants.dart';
import 'package:warenb/extension.dart';
import 'package:warenb/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            child: Image.asset(product.images[0], fit: BoxFit.cover),
          )),
          const SizedBox(height: defaultPadding / 2),
          Text(
            product.name,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            '${product.price.formatMoney} VNĐ',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
