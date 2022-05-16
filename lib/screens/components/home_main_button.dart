import 'package:flutter/material.dart';

class HomeMainButton extends StatelessWidget {
  final String leadingPic;
  final String title;
  final String? subTitle;
  final VoidCallback onTap;
  const HomeMainButton({Key? key,required this.leadingPic,this.subTitle,required this.title,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width/20),
        child: Container(
          height: size.height/8,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: Colors.grey.shade100,
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                    offset: Offset(0, 2)
                )
              ]
          ),
          child: Center(
            child: ListTile(
              leading: Image.asset(leadingPic),
              title: Text(title,style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w500),),
              subtitle: subTitle != null ?  Text(subTitle!,style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.grey),) : null,
            ),
          ),
        ),
      ),
    );
  }
}
