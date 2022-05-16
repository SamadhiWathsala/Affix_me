import 'package:affix_me/model/album.dart';
import 'package:affix_me/screens/album.dart';
import 'package:flutter/material.dart';

class SingleAlbum extends StatelessWidget {
  final AlbumModel album;
  const SingleAlbum({Key? key,required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ()=> Navigator.pushNamed(context, Album.routeName),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.grey)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: size.height/50),
                child: Text(album.title),
              )
            ],
          ),
        ),
      ),
    );
  }
}
