import 'package:affix_me/model/album.dart';
import 'package:affix_me/screens/components/album.dart';
import 'package:affix_me/screens/components/home_header.dart';
import 'package:affix_me/screens/screan_arguments/article_screen.dart';
import 'package:affix_me/services/netork_services.dart';
import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  static const String routeName = '/albums';
  const Albums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ArticleScreenArg args =
    ModalRoute.of(context)!.settings.arguments as ArticleScreenArg;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const HomeHeader(title: 'Photo Albums', subTitle: 'Select individual album to make change'),
          FutureBuilder<List<AlbumModel>>(
            future: NetworkService().fetchAlbums(args.userId),
            builder: (context, snapshot) {
              print(snapshot.error);
              if (snapshot.hasData) {
                print(snapshot.data);
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width/20),
                    child: GridView.builder(
                        itemCount: snapshot.data!.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context,index){
                          return  SingleAlbum(album: snapshot.data![index],);
                        }
                    ),
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
