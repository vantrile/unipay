import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:unipay/View/CardDetailsPage.dart';

import '../Model/ItemPaymentModel.dart';
import '../Themes/CustomColors.dart';
import '../Themes/CustomStyle.dart';

class ItemPaymentWidget extends StatelessWidget {
  const ItemPaymentWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.all(20),
      width: size.width,
      decoration: BoxDecoration(
        color: CustomColors.backgroundText,
        borderRadius: const BorderRadius.all(
          Radius.circular(13),
        ),
      ),
      child: ExpandablePanel(
        theme: const ExpandableThemeData(
          iconColor: Colors.white,
        ),
        header: Text(
          'February - 2021',
          style: CustomStyle.styleTextWithBold,
        ),
        collapsed: const Text(''),
        expanded: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return CardDetailsPage();
            }));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ItemPaymentModel.getListPayment()
                .map((e) => Builder(builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset(e.iconPath),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                e.itemName,
                                style: CustomStyle.styleNormalText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(e.price, textAlign: TextAlign.start),
                            ),
                            Image.asset('assets/images/Arrow_Right_White.png'),
                          ],
                        ),
                      );
                    }))
                .toList(),
          ),
        ),
      ),
    );
  }
}
