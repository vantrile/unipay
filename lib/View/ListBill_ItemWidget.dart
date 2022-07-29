import 'package:flutter/material.dart';
import 'package:unipay/View/BillDetailsPage.dart';

import '../Model/BillsModel.dart';
import '../Themes/CustomColors.dart';
import '../Themes/CustomStyle.dart';

class ListBill_ItemWidget extends StatelessWidget {
  const ListBill_ItemWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height / 5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: BillsModel.getListBills().length,
          itemBuilder: (BuildContext context, int index) {
            BillsModel item = BillsModel.getListBills()[index];
            return Container(
                width: size.width / 2,
                height: size.height / 3,
                decoration: BoxDecoration(
                  color: CustomColors.backgroundText,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                            width: size.width / 3,
                            height: size.height / 10,
                            child: Image.asset(
                                'assets/images/Graphic_elment.png')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 7,
                        bottom: 7,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: size.height / 11,
                              width: size.width / 11,
                              child: Image.asset('${item.iconPath}')),
                          Text(
                            '${item.price}',
                            style: CustomStyle.titleSmallStyleBold,
                          ),
                          Text(
                            '${item.description}',
                            style: CustomStyle.titleSmallStyle,
                          ),
                          Expanded(
                              child: Container(
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: CustomColors.blueColor),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                        return const BillDetailsPage();
                                      }));
                                    },
                                    child: Text(
                                      'Pay Now',
                                      style: CustomStyle.textButtonStyle,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/arrow_right_button.png',
                                    width: size.width / 20,
                                    height: size.height / 20,
                                  ),
                                ],
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
