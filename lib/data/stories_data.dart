import 'package:pet_app/entities/user_entity.dart';
import 'package:pet_app/entities/user_story.dart';
import 'package:pet_app/theme/theme.dart';

List<UserStory> stories = [
  UserStory(
      color: ThemeColors.blanchedAlmond,
      user: User(photo: 'assets/users/me.png', name: 'You')),
  UserStory(
      color: ThemeColors.water,
      user: User(photo: 'assets/users/dianne.png', name: 'Dianne')),
  UserStory(
      color: ThemeColors.pinkLace,
      user: User(photo: 'assets/users/john-co.png', name: 'John')),
  UserStory(
      color: ThemeColors.lavenderWeb,
      user: User(photo: 'assets/users/jerome.png', name: 'Jerome')),
  UserStory(
      color: ThemeColors.mistyRoseSecond,
      user: User(photo: 'assets/users/theresa.png', name: 'Theresa')),
  UserStory(
      color: ThemeColors.nyanza,
      user: User(photo: 'assets/users/jenny-wilson.png', name: 'Jenny'))
];
