import 'package:flutter/material.dart';
import 'package:unipay/Themes/ConstString.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';

import '../Model/SubscribeModels.dart';
import 'ListBill_ItemWidget.dart';

class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        centerTitle: true,
        title: const Text('Bill'),
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Your Bill'),
                    Image.asset('assets/images/Plus.png'),
                  ],
                ),
              ),
              ListBill_ItemWidget(size: size),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Text(ConstString.strTitleBillPage),
              ),
              Expanded(
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      SubscribeModels item =
                          SubscribeModels.getListSubscriber()[index];
                      return Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 8),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: CustomColors.backgroundText,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Image.asset(item.pathIcon),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(item.price),
                                    Text(
                                      item.channelName,
                                      style: CustomStyle.styleNormalText,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Image.asset('assets/images/Arrow_Right_White.png')
                          ],
                        ),
                      );
                    },
                    itemCount: SubscribeModels.getListSubscriber().length,
                    scrollDirection: Axis.vertical,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
