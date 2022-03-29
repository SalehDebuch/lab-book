import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String? text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Text(
          text!,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        //const Spacer(),
        const SizedBox(height: 20),

        Image.asset(
          image!,
          height: getProportionateScreenHeight(400),
          width: getProportionateScreenWidth(600),
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
