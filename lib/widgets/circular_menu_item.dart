import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_app/theme/theme.dart';

class CircularMenuItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String assetIcon;

  const CircularMenuItem(
      {super.key, required this.onPressed, required this.assetIcon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: onPressed,
      backgroundColor: ThemeColors.eerieBlack,
      shape: CircleBorder(),
      elevation: 0,
      highlightElevation: 0,
      child: SvgPicture.asset(assetIcon,
          width: 16,
          height: 16,
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
    );
  }
}
