import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_app/theme/theme.dart';

class BottomBarItem extends StatelessWidget {
  final String icon;
  final String title;
  final bool isActive;

  const BottomBarItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: isActive
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: ThemeFonts.rubik,
                      color: ThemeColors.eerieBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: 44,
                  height: 2,
                  decoration: BoxDecoration(
                      color: ThemeColors.eerieBlack,
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                )
              ],
            )
          : IconButton(
              onPressed: () {},
              highlightColor: ThemeColors.antiFlashWhite,
              icon: SvgPicture.asset(icon,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                      ThemeColors.silverFoil, BlendMode.srcIn))),
    );
  }
}
