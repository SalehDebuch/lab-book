import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sampleproject/constants.dart';
import 'package:sampleproject/routes.dart';
import 'package:sampleproject/screens/splash_screen/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: kPrimaryColr,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab Encyclopedia',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.black),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        //  primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routname,
      routes: routes,
    );
  }
}
