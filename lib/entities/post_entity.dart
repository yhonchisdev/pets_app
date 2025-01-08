import 'package:flutter/material.dart';
import 'package:pet_app/entities/user_story.dart';

class PostEntity {
  final UserStory story;
  final int timePublished;
  final String photo;
  final Color color;

  PostEntity(
      {required this.story,
      required this.timePublished,
      required this.photo,
      required this.color});
}
