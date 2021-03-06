import 'package:flutter/material.dart';
import 'package:sampleproject/screens/sign_in_screen/components/social_icons.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("  حساب جديد ", style: headingStyle), //Register Account
                Text(
                  "أكمل البيانات المطلوبة  \n   لإعداد حساب جديد ", //Complete your details or continue \nwith social media
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      socialIcon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      socialIcon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      socialIcon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
