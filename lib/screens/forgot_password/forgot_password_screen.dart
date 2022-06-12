import 'package:flutter/material.dart';

import 'body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          " استعادة الحساب  ",
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.end,
        ), //Forgot Password
      ),
      body: Body(),
    );
  }
}
