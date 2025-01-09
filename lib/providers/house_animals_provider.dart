import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_app/entities/post_entity.dart';
import 'package:pet_app/repositories/house_animals_repository.dart';
import 'package:pet_app/repositories/post_repository.dart';

final postRepositoryProvider = Provider<PostRepository>((ref) {
  return HouseAnimalsRepository();
});

final houseAnimalsProvider = FutureProvider<List<PostEntity>>((ref) async {
  final repository = ref.watch(postRepositoryProvider);
  await Future.delayed(const Duration(seconds: 2));
  return await repository.fetchPosts();
});
