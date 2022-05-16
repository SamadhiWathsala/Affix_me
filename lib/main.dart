import 'package:affix_me/routes.dart';
import 'package:affix_me/screens/auth.dart';
import 'package:affix_me/screens/home.dart';
import 'package:affix_me/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      title: 'AffixMe',
      theme: myTheme(),
      home: const Authentication()
    );
  }
}

