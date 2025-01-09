import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_app/theme/theme.dart';

class CircularMenuItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String assetIcon;
  final bool active;

  const CircularMenuItem(
      {super.key,
      required this.onPressed,
      required this.assetIcon,
      this.active = false});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: onPressed,
      backgroundColor: active ? ThemeColors.eerieBlack : Colors.white,
      shape: CircleBorder(),
      elevation: 4,
      highlightElevation: 0,
      child: SvgPicture.asset(assetIcon,
          width: 16,
          height: 16,
          colorFilter: ColorFilter.mode(
              active ? Colors.white : ThemeColors.eerieBlack, BlendMode.srcIn)),
    );
  }
}
