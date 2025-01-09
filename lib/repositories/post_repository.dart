import 'package:pet_app/entities/post_entity.dart';

abstract class PostRepository {
  Future<List<PostEntity>> fetchPosts();
}
