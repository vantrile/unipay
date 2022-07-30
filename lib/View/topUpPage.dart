import 'package:flutter/material.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';

class topUpPage extends StatefulWidget {
  const topUpPage({Key? key}) : super(key: key);

  @override
  State<topUpPage> createState() => _topUpPageState();
}

class _topUpPageState extends State<topUpPage> {
  // add comment
  double value = 30;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height / 3,
                  decoration: BoxDecoration(
                    color: CustomColors.backgroundText,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Set Your Top-up',
                          style: CustomStyle.styleSmallTitle,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Rp 50.000',
                            style: CustomStyle.styleValueTransfer,
                          ),
                        ),
                        Slider(
                          min: 10.0,
                          max: 900.0,
                          activeColor: Colors.cyan,
                          inactiveColor: Colors.amberAccent,
                          value: value,
                          divisions: 10,
                          label: value.round().toString(),
                          onChanged: (double valueChange) {
                            setState(() {
                              value = valueChange;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
