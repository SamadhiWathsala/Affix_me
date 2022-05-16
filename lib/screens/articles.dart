import 'package:affix_me/model/article.dart';
import 'package:affix_me/screens/components/home_header.dart';
import 'package:affix_me/screens/components/single_post.dart';
import 'package:affix_me/screens/screan_arguments/article_screen.dart';
import 'package:affix_me/services/netork_services.dart';
import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
  static const String routeName = '/articles';
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ArticleScreenArg args =
    ModalRoute.of(context)!.settings.arguments as ArticleScreenArg;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HomeHeader(
            title: 'Posted Articles',
            subTitle: 'Select individual articles for make changes',
          ),
          FutureBuilder<List<Article>>(
            future: NetworkService().fetchArticles(args.userId),
            builder: (context, snapshot) {
              print(snapshot.error);
              if (snapshot.hasData) {
                print(snapshot.data);
                return Expanded(
                  child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context,index){
                        return SingleArticle();
                      }
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),


        ],
      ),
    );
  }
}
