import 'package:affix_me/screens/components/auth_form.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  static const String routeName = '/authentication';
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/affixmelogo.png',height: size.height/15,),
                Text('Good Morning',style: Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.bold),),
                Text('AffixMe Admin Portal',style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold,color: Colors.grey),),
                SizedBox(height: size.height/30,),
                const AuthForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
