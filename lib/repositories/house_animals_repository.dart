import 'package:pet_app/entities/post_entity.dart';
import 'package:pet_app/entities/user_entity.dart';
import 'package:pet_app/entities/user_story_entity.dart';
import 'package:pet_app/repositories/post_repository.dart';
import 'package:pet_app/theme/theme.dart';

class HouseAnimalsRepository implements PostRepository {
  @override
  Future<List<PostEntity>> fetchPosts() async {
    return [
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
          color: ThemeColors.antiFlashWhite)
    ];
  }
}
