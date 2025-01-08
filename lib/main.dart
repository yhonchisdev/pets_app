import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_app/data/posts_data.dart';
import 'package:pet_app/entities/post_entity.dart';
import 'package:pet_app/theme/theme.dart';
import 'package:pet_app/widgets/custom_app_bar.dart';
import 'package:pet_app/widgets/custom_bottom_app_bar.dart';
import 'package:pet_app/widgets/post.dart';
import 'package:pet_app/widgets/stories.dart';
import 'package:pet_app/widgets/wellcome.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pets App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(),
        extendBody: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight + 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wellcome(),
              ),
              SizedBox(
                height: 16,
              ),
              Stories(),
              ...posts.map((PostEntity post) {
                return Post(post: post);
              })
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomAppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ThemeColors.eerieBlack,
          shape: CircleBorder(),
          elevation: 0,
          highlightElevation: 0,
          child: SvgPicture.asset('assets/icons/plus.svg',
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
