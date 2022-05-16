import 'package:affix_me/screens/components/home_header.dart';
import 'package:affix_me/screens/components/single_photo.dart';
import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  static const String routeName = '/album';
  const Album({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
      children: [
        const HomeHeader(title: 'Dog', subTitle: 'Select individual image to make change'),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width/20),
            child: GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context,index){
                  return const SinglePic();
                }
            ),
          ),
        )
],
    ),
    );
  }
}
