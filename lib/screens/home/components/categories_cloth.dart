import 'package:flutter/material.dart';
import 'package:warenb/constants.dart';
import 'package:warenb/models/category.dart';

import 'category_card.dart';

class CategoriesCloth extends StatelessWidget {
  const CategoriesCloth({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
            category_list.length,
            (index) => Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: CategoryCard(
                title: category_list[index].title,
                iconPath: category_list[index].iconPath,
                onPress: () {},
              )
            )
        ),
      ),
    );
  }
}


