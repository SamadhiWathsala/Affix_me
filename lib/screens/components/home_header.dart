import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  const HomeHeader({Key? key,required this.title, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width/20),
      child: SizedBox(
        height: size.height/7,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w800,color: Colors.grey[600]),
                  ),
                  Text(subTitle, style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w400,color: Colors.grey[600]),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}