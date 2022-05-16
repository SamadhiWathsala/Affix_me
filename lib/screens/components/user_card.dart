import 'package:affix_me/model/user.dart';
import 'package:affix_me/screens/screan_arguments/article_screen.dart';
import 'package:affix_me/screens/select_category.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key,required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ()=>Navigator.pushNamed(context, SelectCategory.routeName,arguments: ArticleScreenArg(userId: user.id)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width/20,vertical: size.height/80),
        child: Container(
          height: size.height/6,
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
              leading: Image.asset('assets/images/user.png'),
              title:  Text(user.name,style: const TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('username: ' + user.username,style: const TextStyle(fontWeight: FontWeight.w400,color: Colors.black)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user.email,style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(user.phone,style: const TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
