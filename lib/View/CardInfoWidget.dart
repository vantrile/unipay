import 'package:flutter/material.dart';
import 'package:unipay/View/YourCardPage.dart';

import '../Model/CardInfoModel.dart';
import '../Themes/CustomStyle.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: CardInfoModel.getListCard()
            .map((e) => Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const YourCardPage();
                      }));
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 10, bottom: 10, right: 25),
                      child: Row(
                        children: [
                          Image.asset(e.iconCard),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        e.cardName,
                                        style: CustomStyle.titleStyle,
                                      ),
                                    ),
                                    Text(
                                      e.cardNumber,
                                      style: CustomStyle.titleSmallStyle,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      e.moneyValue,
                                      style: CustomStyle.titleStyle,
                                    ),
                                    Text(
                                      e.dateCard,
                                      style: CustomStyle.titleSmallStyle,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }))
            .toList(),
      ),
    );
  }
}
