import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 20,
        currentIndex: 0,
        onTap: (index) {},
        items: [
          BottomNavigationBarItem(
              label: 'WarenB',
              icon: SizedBox(
                  width: 22,
                  height: 22,
                  child: SvgPicture.asset('assets/icons/icon_wb_w.svg'))),
          BottomNavigationBarItem(
              label: 'Favourite',
              icon: SizedBox(
                  width: 18,
                  height: 18,
                  child: SvgPicture.asset('assets/icons/icon_wb_heart.svg')),
              activeIcon: SizedBox(
                  width: 18,
                  height: 18,
                  child: SvgPicture.asset(
                      'assets/icons/icon_wb_selected_heart.svg'))),
          BottomNavigationBarItem(
              label: 'Cart',
              icon: SizedBox(
                  width: 18,
                  height: 18,
                  child: SvgPicture.asset('assets/icons/icon_wb_cart.svg'))),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: SizedBox(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset('assets/icons/icon_wb_profile.svg'))),
        ]);
  }
}
