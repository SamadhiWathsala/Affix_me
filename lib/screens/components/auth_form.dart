import 'package:affix_me/screens/home.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  String? _username;
  String? _password;

  void onSubmit() async{
    if(_formKey.currentState!.validate()){
      Navigator.pushNamedAndRemoveUntil(context, Home.routeName, (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final _node = FocusScope.of(context);
    final size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
            child: TextFormField(
              keyboardType: TextInputType.name,
              textAlign: TextAlign.start,
              onEditingComplete: () => _node.nextFocus(),
              decoration: const InputDecoration(
                hintText: 'Username',
              ),
              validator: (value) {

                if(value == null || value.isEmpty){
                  return 'Required field';
                }
                return null;
              },
              onChanged: (String? value)=> setState(() {
                _username = value;
              }),
              onSaved: (String? value) => setState(() {
                _username = value;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.start,
              obscureText: true,
              onEditingComplete: () => _node.nextFocus(),
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
              validator: (value) {

                if(value == null || value.isEmpty){
                  return 'Required field';
                }
                return null;
              },
              onChanged: (String? value)=> setState(() {
                _password = value;
              }),
              onSaved: (String? value) => setState(() {
                _password = value;
              }),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height/40),
            child: Container(
              height: size.height/15,
              width: size.width/2.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.pink)
                        )
                    )
                ),
                  onPressed: onSubmit,
                  child: const Text('Signin')
              ),
            ),
          )
        ],
      ),
    );
  }
}
