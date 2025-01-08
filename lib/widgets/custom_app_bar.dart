import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_app/theme/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SvgPicture.asset(
          'assets/logos/logo.svg',
          width: 48,
          height: 32,
        ),
      ),
      leadingWidth: 68,
      actions: [
        IconButton(
            onPressed: () {},
            highlightColor: ThemeColors.antiFlashWhite,
            icon: SvgPicture.asset(
              'assets/icons/email.svg',
              width: 24,
              height: 24,
            ))
      ],
    );
  }
}
