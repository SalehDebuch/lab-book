import 'package:flutter/material.dart';
import 'package:sampleproject/size_config.dart';
import 'body.dart';

class SignIn extends StatelessWidget {
  static String routname = "\SignIn";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Sign In',
          style: TextStyle(
            color: Colors.black45,
            letterSpacing: 4,
            fontSize: 18,
            fontFamily: 'Muli',
          ),
        ),
      ),
      body: Body(),
    );
  }
}
