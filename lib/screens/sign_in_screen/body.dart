import 'package:flutter/material.dart';

import '../../components/no_account_text.dart';
import '../../size_config.dart';
import 'components/sign_form.dart';
import 'components/social_icons.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(28),
                ),
              ),
              const Text(
                "Sign in with your email and password  \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Form(child: SignForm()),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SizedBox(
                width: SizeConfig.screenWidth * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
