import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class CategoryCard extends StatelessWidget {
  final String title, iconPath;
  final VoidCallback onPress;

  const CategoryCard(
      {super.key,
      required this.title,
      required this.iconPath,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPress,
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
          child: Column(
            children: [
              SizedBox(
                width: 32,
                height: 32,
                child: SvgPicture.asset(iconPath),
              ),
              const SizedBox(height: defaultPadding / 2),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black),
              )
            ],
          ),
        ));
  }
}
