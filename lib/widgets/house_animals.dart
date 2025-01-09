import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_app/entities/post_entity.dart';
import 'package:pet_app/providers/house_animals_provider.dart';
import 'package:pet_app/widgets/post.dart';

class HouseAnimals extends ConsumerWidget {
  const HouseAnimals({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final houseAnimals = ref.watch(houseAnimalsProvider);

    return houseAnimals.when(
        data: (data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...data.map((PostEntity post) {
                return Post(post: post);
              })
            ],
          );
        },
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        loading: () => Center(child: CircularProgressIndicator()));
  }
}
