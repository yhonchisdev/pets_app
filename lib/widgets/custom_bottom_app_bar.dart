import 'package:flutter/material.dart';
import 'package:pet_app/theme/theme.dart';
import 'package:pet_app/widgets/bottom_bar_item.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: ThemeColors.gainsboro,
                offset: Offset(0, -5),
                blurRadius: 20)
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomBarItem(
                icon: 'assets/icons/home.svg', title: 'Inicio', isActive: true),
            BottomBarItem(
                icon: 'assets/icons/search.svg',
                title: 'Explore',
                isActive: false),
            SizedBox(
              width: 56,
            ),
            BottomBarItem(
                icon: 'assets/icons/bell.svg',
                title: 'Notificacion',
                isActive: false),
            BottomBarItem(
                icon: 'assets/icons/user.svg',
                title: 'Usuario',
                isActive: false),
          ],
        ),
      ),
    );
  }
}
