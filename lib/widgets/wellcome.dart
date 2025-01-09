import 'package:flutter/material.dart';
import 'package:pet_app/theme/theme.dart';

class Wellcome extends StatelessWidget {
  const Wellcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Plate',
            style: TextStyle(
                fontFamily: ThemeFonts.rubik,
                color: ThemeColors.eerieBlack,
                fontSize: 12,
                fontWeight: FontWeight.normal)),
        Text('JA107',
            style: TextStyle(
                fontFamily: ThemeFonts.rubik,
                color: ThemeColors.eerieBlack,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text('Welcome to',
                style: TextStyle(
                    fontFamily: ThemeFonts.rubik,
                    color: ThemeColors.eerieBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.normal)),
            SizedBox(
              width: 4,
            ),
            Text('Yhonchis,',
                style: TextStyle(
                    fontFamily: ThemeFonts.rubik,
                    color: ThemeColors.eerieBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'The Latest',
          style: TextStyle(
              fontFamily: ThemeFonts.rubik,
              color: ThemeColors.eerieBlack,
              fontSize: 36,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
