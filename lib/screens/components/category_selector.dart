import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final String title;
  final String backgroundPic;
  final VoidCallback onTap;
  const CategorySelector({Key? key,required this.title,required this.backgroundPic,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(top: size.height/15,left: size.width/25,right: size.width/25),
        child: Container(
          width: size.width,
          height: size.height/3.5,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.grey,width: 2)
          ),
          child: Row(
            children: [
              Image.asset(backgroundPic,height: size.height/4),
              Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height/48),
                    child: Text(title,style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
