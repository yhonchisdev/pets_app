import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_app/entities/post_entity.dart';
import 'package:pet_app/providers/farm_animals_provider.dart';
import 'package:pet_app/widgets/post.dart';

class FarmAnimals extends ConsumerWidget {
  const FarmAnimals({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmAnimals = ref.watch(farmAnimalsProvider);

    return farmAnimals.when(
        data: (data) {
          return Column(
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
