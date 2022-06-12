import 'package:flutter/material.dart';
import 'package:sampleproject/screens/splash_screen/components/button.dart';
import 'package:sampleproject/screens/test_list_views/tests_list_screen.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        // Image.asset(
        //   "assets/images/success.png",
        //   height: SizeConfig.screenHeight * 0.4, //40%
        // ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          " ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        Center(
          child: SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: CustomeButton(
              text: "تصفح الموسوعة ",
              press: () {
                Navigator.pushNamed(context, TestsLists.routname);
              },
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
