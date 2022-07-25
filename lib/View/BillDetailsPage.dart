import 'package:flutter/material.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';

import '../Model/PaymentMethodModel.dart';

class BillDetailsPage extends StatefulWidget {
  const BillDetailsPage({Key? key}) : super(key: key);

  @override
  State<BillDetailsPage> createState() => _BillDetailsPageState();
}

class _BillDetailsPageState extends State<BillDetailsPage> {
  int selectValue = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        centerTitle: true,
        shadowColor: Colors.transparent,
        title: const Text(
          'Check Out',
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
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: CustomColors.backgroundText,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    margin: EdgeInsets.only(top: size.height / 5),
                    width: size.width,
                    height: size.height,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Column(
                    children: [
                      Container(
                        width: size.width / 2,
                        height: size.height / 4,
                        decoration: BoxDecoration(
                          border: Border.all(color: CustomColors.blueColor),
                          color: CustomColors.backgroundText,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Image.asset(
                                    'assets/images/dribbble-icon.png'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Rp 800.000/Years',
                                ),
                              ),
                              Text('Subcribe Pro Dribble'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 30,
                            bottom: 30,
                          ),
                          child: Text(
                            'Choose Payment Method',
                            style: CustomStyle.styleTextButton,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            PaymentMethodModel item =
                                PaymentMethodModel.getListPayments()[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 30),
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(10),
                                width: size.width,
                                height: size.height / 10,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: item.isChecked
                                      ? Border.all(
                                          color: CustomColors.blueColor)
                                      : Border.all(color: Colors.transparent),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(item.iconPath),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, right: 60),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item.paymentName,
                                              style:
                                                  CustomStyle.styleTextButton,
                                            ),
                                            Text(
                                              item.seriNumber,
                                              style:
                                                  CustomStyle.styleNormalText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Transform.scale(
                                      scale: 1.5,
                                      child: Radio(
                                          activeColor: CustomColors.blueColor,
                                          value: item.isChecked,
                                          groupValue: selectValue,
                                          onChanged: (value) {
                                            setState(() {
                                              selectValue = value as int;
                                            });
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount:
                              PaymentMethodModel.getListPayments().length,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
