import 'package:flutter/material.dart';

class SinglePic extends StatelessWidget {
  const SinglePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
                image: AssetImage('assets/images/dog.jpg')
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: Colors.grey)
        ),
      ),
    );
  }
}
