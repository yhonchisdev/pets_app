import 'package:pet_app/entities/post_entity.dart';
import 'package:pet_app/entities/user_entity.dart';
import 'package:pet_app/entities/user_story_entity.dart';
import 'package:pet_app/theme/theme.dart';

List<PostEntity> posts = [
  PostEntity(
      story: UserStory(
          color: ThemeColors.blanchedAlmond,
          user: User(photo: 'assets/users/me.png', name: 'Harold Liang')),
      timePublished: 44,
      photo: 'assets/pets/cat.png',
      color: ThemeColors.mistyRose),
  PostEntity(
      story: UserStory(
          color: ThemeColors.water,
          user: User(photo: 'assets/users/dianne.png', name: 'Diane Soft')),
      timePublished: 32,
      photo: 'assets/pets/dog.png',
      color: ThemeColors.antiFlashWhite),
  PostEntity(
      story: UserStory(
          color: ThemeColors.pinkLace,
          user: User(photo: 'assets/users/john-co.png', name: 'John Cort')),
      timePublished: 41,
      photo: 'assets/pets/cow.png',
      color: ThemeColors.lavenderWeb),
  PostEntity(
      story: UserStory(
          color: ThemeColors.lavenderWeb,
          user: User(photo: 'assets/users/jerome.png', name: 'Jerome Sans')),
      timePublished: 22,
      photo: 'assets/pets/horse.png',
      color: ThemeColors.lemonMeringue),
  PostEntity(
      story: UserStory(
          color: ThemeColors.mistyRoseSecond,
          user: User(photo: 'assets/users/theresa.png', name: 'Theresa Steve')),
      timePublished: 35,
      photo: 'assets/pets/sheep.png',
      color: ThemeColors.nyanza),
  PostEntity(
      story: UserStory(
          color: ThemeColors.nyanza,
          user: User(
              photo: 'assets/users/jenny-wilson.png', name: 'Jenny Wilson')),
      timePublished: 15,
      photo: 'assets/pets/pig.png',
      color: ThemeColors.water)
];
