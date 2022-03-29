import 'package:flutter/material.dart';

import '../../../constants.dart';

String? text;

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              primary: kPrimaryColr,
              backgroundColor: kPrimaryColr),
          onPressed: press as void Function()?,
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 18.0,
              color: (Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
