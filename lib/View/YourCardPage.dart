import 'package:flutter/material.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';

import 'ItemPaymentWidget.dart';
import 'VisaCardWidget.dart';

class YourCardPage extends StatefulWidget {
  const YourCardPage({Key? key}) : super(key: key);

  @override
  State<YourCardPage> createState() => _YourCardState();
}

class _YourCardState extends State<YourCardPage> {
  bool isPhysicalCard = true;
  bool isVirtualCard = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          'YourCard',
          style: TextStyle(
              fontSize: 14, color: Colors.white, fontFamily: 'Poppins'),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Text(
                  '2 Physical Card, 1 Virtual Card',
                  style: CustomStyle.styleNormalText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isVirtualCard = false;
                          isPhysicalCard = true;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            isPhysicalCard
                                ? CustomColors.colorPrimaryBlue
                                : CustomColors.backgroundColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36),
                          ),
                        ),
                      ),
                      child: Expanded(
                        child: Container(
                          child: Center(
                            child: Text('Physical Card',
                                style: CustomStyle.titleSmallStyleBold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isVirtualCard = true;
                          isPhysicalCard = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            isVirtualCard
                                ? CustomColors.colorPrimaryBlue
                                : CustomColors.backgroundColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36),
                          ),
                        ),
                      ),
                      child: Expanded(
                        child: Container(
                          child: Center(
                            child: Text(
                              'Virtual Card',
                              style: CustomStyle.titleSmallStyleBold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                VisaCardWidget(size: size),
                ItemPaymentWidget(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
