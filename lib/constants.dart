import 'package:flutter/material.dart';
import 'size_config.dart';

const kPrimaryColr = Color(0xFF2F8F9D);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError =
    "يرجى ادخال بريدك الالكتروني"; //Please Enter your email
const String kInvalidEmailError =
    "يرجى ادخال بريد الكتروني صالح"; //Please Enter Valid Email
const String kPassNullError =
    "يرجى ادخال كلمة السر"; //Please Enter your password
const String kShortPassError = "كلمة السر قصيرة جداً"; //Password is too short
const String kMatchPassError = "كلمة السر غير متطابقة"; //Passwords don't match
const String kPassConNullError =
    "يرجى تأكيد كلمة السر"; // Please confirm your password
const String kNamelNullError = "يرجى ادخال الاسم"; //Please Enter your name
const String kMobileNumberNullError =
    " أدخل كلمة السر  "; //Passwords don't match

const String kPhoneNumberNullError =
    "يرجى ادخال رقم الموبايل"; //Please Enter your phone number
//const String kAddressNullError = "";//Please Enter your address

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
