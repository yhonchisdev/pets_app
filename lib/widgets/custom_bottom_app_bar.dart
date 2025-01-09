import 'package:flutter/material.dart';
import 'package:pet_app/theme/theme.dart';
import 'package:pet_app/widgets/bottom_bar_item.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight + 20,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: ThemeColors.gainsboro,
                offset: Offset(0, -5),
                spreadRadius: 2,
                blurRadius: 20)
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBarItem(
              icon: 'assets/icons/home.svg', title: 'Home', isActive: true),
          BottomBarItem(
              icon: 'assets/icons/search.svg',
              title: 'Explore',
              isActive: false),
          SizedBox(
            width: 56,
          ),
          BottomBarItem(
              icon: 'assets/icons/bell.svg',
              title: 'Notification',
              isActive: false),
          BottomBarItem(
              icon: 'assets/icons/user.svg', title: 'User', isActive: false),
        ],
      ),
    );
  }
}
