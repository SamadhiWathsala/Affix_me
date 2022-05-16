import 'package:affix_me/model/user.dart';
import 'package:affix_me/screens/components/home_header.dart';
import 'package:affix_me/screens/components/user_card.dart';
import 'package:affix_me/screens/select_category.dart';
import 'package:affix_me/services/netork_services.dart';
import 'package:flutter/material.dart';

class AppUsers extends StatelessWidget {
  static const String routeName = '/app-users';
  const AppUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HomeHeader(
            title: 'App Users',
            subTitle: 'Filter app users using',
          ),
          FutureBuilder<List<User>>(
            future: NetworkService().fetchUsers(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context,index){
                          return UserCard(user: snapshot.data![index],);
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
