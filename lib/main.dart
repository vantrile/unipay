import 'package:flutter/material.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';
import 'package:unipay/View/HomePage.dart';
import 'package:unipay/View/MainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const MainScreen(), //SplashScreen(),
    );
  }

  static ThemeData? darkTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    colorScheme: const ColorScheme.light(secondary: Colors.white),
    textTheme: TextTheme(
      bodyText1: CustomStyle.titleStyle,
      bodyText2: CustomStyle.titleStyle,
    ),
    primaryColor: Colors.white,
  );
}
