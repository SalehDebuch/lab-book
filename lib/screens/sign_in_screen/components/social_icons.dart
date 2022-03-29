import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialCard extends StatelessWidget {
  SocialCard({
    required this.socialIcon,
    required this.press,
  });
  final String socialIcon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 15,
          child: SvgPicture.asset(socialIcon),
        ),
      ),
    );
  }
}
