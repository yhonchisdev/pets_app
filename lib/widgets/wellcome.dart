import 'package:flutter/material.dart';
import 'package:pet_app/theme/theme.dart';

class Wellcome extends StatelessWidget {
  const Wellcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'The Latest',
      style: TextStyle(
          fontFamily: ThemeFonts.rubik,
          color: ThemeColors.eerieBlack,
          fontSize: 36,
          fontWeight: FontWeight.bold),
    );
  }
}
