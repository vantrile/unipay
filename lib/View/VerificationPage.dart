import 'package:flutter/material.dart';
import 'package:unipay/Themes/ConstString.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';
import 'package:unipay/View/VerificationLoadingPage.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(ConstString.titleVerification,
                style: CustomStyle.titleVerificationStyle),
            Text(
              ConstString.strContentVerification,
              style: CustomStyle.styleNormalText,
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, top: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: CustomColors.backgroundText,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              width: size.width,
              height: size.height / 30,
              child: Text(
                '+6281234567896',
                style: CustomStyle.styleNormalTextWithBold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width / 8,
                    height: size.height / 16,
                    decoration: BoxDecoration(
                      color: CustomColors.colorContentText,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        '4',
                        style: CustomStyle.titleVerificationStyle,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 8,
                    height: size.height / 16,
                    decoration: BoxDecoration(
                      color: CustomColors.colorContentText,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        '5',
                        style: CustomStyle.titleVerificationStyle,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 8,
                    height: size.height / 16,
                    decoration: BoxDecoration(
                      color: CustomColors.colorContentText,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        '3',
                        style: CustomStyle.titleVerificationStyle,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 8,
                    height: size.height / 16,
                    decoration: BoxDecoration(
                      color: CustomColors.colorContentText,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        '1',
                        style: CustomStyle.titleVerificationStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerificationLoadingPage(),
                      ));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      CustomColors.colorPrimaryBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: size.width,
                  height: size.height / 15,
                  child: Text(
                    ConstString.strContinue,
                    style: CustomStyle.styleTextButton,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
