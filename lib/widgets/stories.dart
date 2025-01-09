import 'package:flutter/material.dart';
import 'package:pet_app/data/stories_data.dart';
import 'package:pet_app/entities/user_story_entity.dart';
import 'package:pet_app/widgets/story.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 103,
      child: ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final UserStory story = stories[index];
            return Story(story: story);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 24,
            );
          },
          itemCount: stories.length),
    );
  }
}
