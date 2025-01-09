import 'package:flutter/material.dart';
import 'package:pet_app/entities/user_story_entity.dart';
import 'package:pet_app/theme/theme.dart';

class Story extends StatelessWidget {
  final UserStory story;

  const Story({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                  width: 3,
                  color: story.color,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  style: BorderStyle.solid)),
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: story.color,
              borderRadius: BorderRadius.circular(56),
            ),
            child: Image.asset(
              story.user.photo,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          story.user.name,
          style: TextStyle(
              fontFamily: ThemeFonts.rubik,
              color: ThemeColors.eerieBlack,
              fontSize: 12,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
