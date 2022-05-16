import 'package:affix_me/screens/album.dart';
import 'package:affix_me/screens/albums.dart';
import 'package:affix_me/screens/app_users.dart';
import 'package:affix_me/screens/articles.dart';
import 'package:affix_me/screens/auth.dart';
import 'package:affix_me/screens/home.dart';
import 'package:affix_me/screens/select_category.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => const Home(),
  AppUsers.routeName: (context) => const AppUsers(),
  SelectCategory.routeName: (context) => const SelectCategory(),
  Articles.routeName: (context) => const Articles(),
  Authentication.routeName: (context) => const Authentication(),
  Albums.routeName: (context) => const Albums(),
  Album.routeName: (context) => const Album()
};