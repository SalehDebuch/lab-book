import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/size_config.dart';
import '../../constants.dart';
import 'body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routname = '\SplashScreen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kPrimaryColr,
        title: Text(
          'الموسوعة المخبرية العربية',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(28),
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}
