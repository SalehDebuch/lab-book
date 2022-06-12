import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sampleproject/constants.dart';
import 'package:sampleproject/routes.dart';
import 'package:sampleproject/screens/splash_screen/splash_screen.dart';
import 'package:sampleproject/screens/test_list_views/tests_list_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 5, 77, 81),
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
        appBarTheme: AppBarTheme(backgroundColor: kPrimaryColr),
        primaryColor: kPrimaryColr,
        iconTheme: const IconThemeData(color: Colors.black),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
            //  bodyText1: TextStyle(color: kTextColor),
            //  bodyText2: TextStyle(color: kTextColor),
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.routname, //SplashScreen.routname
      routes: routes,
    );
  }
}
