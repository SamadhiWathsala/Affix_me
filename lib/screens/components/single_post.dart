import 'package:flutter/material.dart';

class SingleArticle extends StatelessWidget {
  const SingleArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width/25,vertical: size.height/50),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
            border: Border.all(color: Colors.grey)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width/20,vertical: size.height/40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Text post title',style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w900,color: Colors.grey),),
              SizedBox(height: size.height/100,),
              Text('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used '
                  'to demonstrate the visual form of a document or a typeface without relying on '
                  'meaningful content. Lorem ipsum may be used as a placeholder before final copy is '
                  'available.',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.w400,color: Colors.grey[600]),
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
