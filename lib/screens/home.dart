import 'package:affix_me/screens/albums.dart';
import 'package:affix_me/screens/app_users.dart';
import 'package:affix_me/screens/components/home_header.dart';
import 'package:affix_me/screens/components/home_main_button.dart';
import 'package:affix_me/screens/screan_arguments/article_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            const HomeHeader(title: 'Good Morning john Due!',subTitle: 'AffixMe admin portal',),
            Padding(
              padding: EdgeInsets.only(top: size.height/15,left: size.width/20,right: size.width/20),
              child: Container(
                width: size.width,
                height: size.height/3.5,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image:  AssetImage('assets/images/dashboard image.png'),
                    fit: BoxFit.fill
                  )
                ),
              ),
            ),
            SizedBox(height: size.height/30),
            HomeMainButton(leadingPic: 'assets/images/app users.png',title: 'App',subTitle: 'Users',onTap: ()=> Navigator.pushNamed(context, AppUsers.routeName),),
            SizedBox(height: size.height/30),
            HomeMainButton(leadingPic: 'assets/images/gallery.png',title: 'Album',onTap: () => Navigator.pushNamed(context, Albums.routeName,arguments: ArticleScreenArg(userId: 1)),),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:size.width/10,vertical: size.height/50 ),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut ',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey,),textAlign: TextAlign.center,),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height/10,
        child: Column(
          children: [
            Image.asset('assets/images/affixmelogo.png',height: size.height/20,),
            SizedBox(height: size.height/80,),
            Text('Version 1.0',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey,),textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
