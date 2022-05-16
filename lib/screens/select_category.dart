import 'package:affix_me/screens/albums.dart';
import 'package:affix_me/screens/articles.dart';
import 'package:affix_me/screens/components/category_selector.dart';
import 'package:affix_me/screens/components/home_header.dart';
import 'package:affix_me/screens/screan_arguments/article_screen.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatelessWidget {
  static const String routeName = '/select-category';
  const SelectCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ArticleScreenArg args =
    ModalRoute.of(context)!.settings.arguments as ArticleScreenArg;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HomeHeader(title: 'Select Category', subTitle: 'Please select the post type of this user'),
          CategorySelector(title: 'Articles',backgroundPic: 'assets/images/article background.png', onTap: () => Navigator.pushNamed(context, Articles.routeName,arguments: args),),
          CategorySelector(title: 'Albums',backgroundPic: 'assets/images/photo background.jpg', onTap: () => Navigator.pushNamed(context, Albums.routeName,arguments: args),)
        ],
      ),
    );
  }
}
