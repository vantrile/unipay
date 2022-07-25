import 'dart:async';

import 'package:flutter/material.dart';
import 'package:unipay/View/HomePage.dart';

import '../Themes/ConstString.dart';
import '../Themes/CustomColors.dart';
import '../Themes/CustomStyle.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Center(
        widthFactor: size.width,
        heightFactor: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/icon_app.png'),
            Text(
              ConstString.tilteLogin,
              style: CustomStyle.titleStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
