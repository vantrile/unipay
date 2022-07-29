import 'package:flutter/material.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/View/BankAccountPage.dart';
import 'package:unipay/View/ForVenmoPage.dart';
import 'package:unipay/View/ScanPage.dart';

enum GroupRadio { a, b, c }

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  PageController controller = PageController();
  int selectValue = 0;

  @override
  void didChangeDependencies() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> listPage = <Widget>[
      const ForVenmoPage(),
      const ScanPage(),
      const BankAccountPage(),
    ];
    print('selectValue: $selectValue');
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        centerTitle: true,
        shadowColor: Colors.transparent,
        title: const Text(
          'Transfer',
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
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio<int>(
                              value: 0,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => CustomColors.blueColor),
                              groupValue: selectValue,
                              activeColor: Colors.blue,
                              onChanged: (value) {
                                print(value);
                                setState(() {
                                  selectValue = value as int;
                                  controller.jumpToPage(value as int);
                                });
                              }),
                        ),
                        Text('For Venmo'),
                      ],
                    ),
                    Column(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio<int>(
                              value: 1,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => CustomColors.blueColor),
                              groupValue: selectValue,
                              onChanged: (value) {
                                print(value);
                                setState(() {
                                  selectValue = value as int;
                                  controller.jumpToPage(value as int);
                                });
                              }),
                        ),
                        Text('Scan'),
                      ],
                    ),
                    Column(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio<int>(
                              value: 2,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => CustomColors.blueColor),
                              groupValue: selectValue,
                              onChanged: (value) {
                                print(value);
                                setState(() {
                                  selectValue = value as int;
                                  controller.jumpToPage(value as int);
                                });
                              }),
                        ),
                        Text('Bank Account'),
                      ],
                    )
                  ],
                ),
              ),
              Container(

                decoration: BoxDecoration(
                  color: CustomColors.backgroundText,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                margin: const EdgeInsets.only(left: 30, right: 30),
                padding: EdgeInsets.all(10),
                width: size.width,
                height: size.height,
                child: PageView(
                  children: listPage,
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  onPageChanged: (num) {
                    setState(() {
                      selectValue = num;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
