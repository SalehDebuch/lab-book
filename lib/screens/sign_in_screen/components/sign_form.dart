import 'package:flutter/material.dart';
import 'package:sampleproject/screens/forgot_password/forgot_password_screen.dart';
import 'package:sampleproject/screens/login_success/login_success_screen.dart';
import 'package:sampleproject/screens/sign_in_screen/components/custome_icon.dart';
import 'package:sampleproject/screens/splash_screen/components/button.dart';

import '../../../constants.dart';
import '../../../components/form_error.dart';
import '../../../components/keyboard.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 5),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Checkbox(
                    value: remember,
                    activeColor: kPrimaryColr,
                    onChanged: (value) {
                      setState(() {
                        remember = value;
                      });
                    },
                  ),
                ),
                Text("  Remember me"),
                SizedBox(width: 10),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(20)),
            CustomeButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // if all are valid then go to success screen
                  KeyboardUtil.hideKeyboard(context);
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        setState(() {});

        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
          removeError(error: kShortPassError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          //removeError(error: kPassNullError);

          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          //removeError(error: kShortPassError);

          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28), gapPadding: 10),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(28)),

        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
          removeError(error: kInvalidEmailError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28), gapPadding: 10),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(28)),

        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
