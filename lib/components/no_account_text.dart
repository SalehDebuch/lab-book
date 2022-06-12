import 'package:flutter/material.dart';
import 'package:sampleproject/constants.dart';
import 'package:sampleproject/screens/sign_up/sign_up_screen.dart';
import 'package:sampleproject/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ليس لديك حساب سابق؟ ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        SizedBox(width: 5),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "انشاء حساب ", //Sign Up
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16), color: kPrimaryColr),
          ),
        ),
      ],
    );
  }
}
