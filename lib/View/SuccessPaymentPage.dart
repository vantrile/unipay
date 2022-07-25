import 'package:flutter/material.dart';
import 'package:unipay/Themes/ConstString.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';
import 'package:unipay/View/HomePage.dart';

class SuccessPaymentPage extends StatelessWidget {
  const SuccessPaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: CustomColors.backgroundText,
        child: Container(
          margin: const EdgeInsets.only(top: 80),
          child: Expanded(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/images/memphis.png'),
                      Image.asset('assets/images/cycle.png'),
                      Image.asset('assets/images/fill.png'),
                    ],
                  ),
                ),
                Text(
                  ConstString.strSuccessPayment,
                  style: CustomStyle.titleVerificationStyle,
                ),
                Text(
                  ConstString.strMessSuccessPayment,
                  style: CustomStyle.styleNormalText,
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) {
                            return const HomePage();
                          }), (route) => false);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              CustomColors.colorPrimaryBlue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                          ),
                        ),
                        child: Container(
                          width: size.width,
                          height: size.height / 15,
                          child: const Center(
                            child: Text(
                              'Back Home',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
