import 'package:flutter/widgets.dart';
import 'package:sampleproject/screens/pdf_veiwer/pdf_veiwer.dart';
import 'package:sampleproject/screens/sign_in_screen/signe_in_screen.dart';
import 'package:sampleproject/screens/sign_up/sign_up_screen.dart';
import 'package:sampleproject/screens/test_list_views/tests_list_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/splash_screen/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routname: (context) => SplashScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignIn.routname: (context) => SignIn(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  PdfVeiwer.routname: (context) => PdfVeiwer(),
  TestsLists.routname: (context) => TestsLists(),
};
