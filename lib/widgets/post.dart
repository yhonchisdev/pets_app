import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_app/entities/post_entity.dart';
import 'package:pet_app/theme/theme.dart';

class Post extends StatelessWidget {
  final PostEntity post;

  const Post({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(
                          width: 3,
                          color: post.story.color,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          style: BorderStyle.solid)),
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: post.story.color,
                      borderRadius: BorderRadius.circular(56),
                    ),
                    child: Image.asset(
                      post.story.user.photo,
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text(
                            post.story.user.name,
                            style: TextStyle(
                                fontFamily: ThemeFonts.rubik,
                                color: ThemeColors.eerieBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'created a new post',
                            style: TextStyle(
                                fontFamily: ThemeFonts.rubik,
                                color: ThemeColors.eerieBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '${post.timePublished} min ago',
                        style: TextStyle(
                            fontFamily: ThemeFonts.rubik,
                            color: ThemeColors.silverFoil,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                IconButton(
                    onPressed: () {},
                    highlightColor: ThemeColors.antiFlashWhite,
                    icon: SvgPicture.asset(
                      'assets/icons/more.svg',
                      width: 24,
                      height: 5,
                      colorFilter: ColorFilter.mode(
                          ThemeColors.silverFoil, BlendMode.srcIn),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    width: double.infinity,
                    height: 335,
                    decoration: BoxDecoration(
                        color: post.color,
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              SvgPicture.asset('assets/icons/shadow.svg',
                  width: 306,
                  height: 233,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
              Image.asset(
                post.photo,
                width: 205,
                height: 205,
                fit: BoxFit.contain,
              ),
              Positioned(
                  top: 112,
                  left: 8,
                  child: Image.asset(
                    'assets/logos/ball-orange.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  )),
              Positioned(
                  top: 20,
                  right: 0,
                  child: Image.asset(
                    'assets/logos/ball-purple.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  )),
              Positioned(
                  bottom: 28,
                  right: 20,
                  child: Image.asset(
                    'assets/logos/ball-rose.png',
                    width: 107,
                    height: 107,
                    fit: BoxFit.contain,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
