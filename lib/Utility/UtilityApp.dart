import 'package:flutter/material.dart';

class UtilityApp {
  static Widget buttonApp(
      BuildContext context,
      double width,
      double height,
      String textButton,
      TextStyle textStyle,
      Widget widget,
      Color color,
      double radiusValue) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return widget;
              }));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radiusValue),
                ),
              ),
            ),
            child: Container(
              width: width,
              height: height,
              child: Center(
                child: Text(
                  textButton,
                  style: textStyle,
                ),
              ),
            )),
      ),
    );
  }
}
