import 'package:flutter/material.dart';
import 'package:sampleproject/constants.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("انشاء حساب "), //Sign Up
        centerTitle: true,
        backgroundColor: kPrimaryColr,
      ),
      body: Body(),
    );
  }
}
