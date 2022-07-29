import 'package:flutter/material.dart';
import 'package:unipay/Model/ScreenModel.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';
import 'package:unipay/Utility/UtilityApp.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: ScreenModel.getListScreen()
                  .map((e) => Builder(builder: (context) {
                        return UtilityApp.buttonApp(
                            context,
                            size.width,
                            size.height / 15,
                            e.screenName,
                            CustomStyle.styleTextButton,
                            e.widgetName,
                            CustomColors.blueColor,
                            36);
                      }))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
