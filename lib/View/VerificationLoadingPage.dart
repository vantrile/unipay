import 'package:flutter/material.dart';

import '../Themes/ConstString.dart';
import '../Themes/CustomColors.dart';
import '../Themes/CustomStyle.dart';

class VerificationLoadingPage extends StatelessWidget {
  const VerificationLoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ConstString.titleVerification,
              style: CustomStyle.titleVerificationStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              ConstString.strContextLoading,
              style: CustomStyle.styleNormalText,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset('assets/images/loading.png'),
            )
          ],
        ),
      ),
    );
  }
}
