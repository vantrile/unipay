import 'package:flutter/material.dart';

import '../Model/RecentTransactionModel.dart';
import '../Themes/CustomColors.dart';

class RecentTransactionWidget extends StatelessWidget {
  const RecentTransactionWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      width: size.width,
      decoration: BoxDecoration(
        color: CustomColors.backgroundText,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Des, 2020',
            ),
          ),
          Column(
            children: RecentTransactionModel.getRecentTransactions()
                .map((e) => Builder(builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Row(
                          children: [
                            Image.asset(e.avatarPath!, fit: BoxFit.fill),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e.userName!,
                                        style: TextStyle(
                                          color: CustomColors.colorContentText,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        e.recentDate!,
                                        style: TextStyle(
                                            color:
                                                CustomColors.colorContentText),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(e.recentValue!),
                                      Text(
                                        e.statusTransaction!,
                                        style: TextStyle(
                                            color: e.isReceived!
                                                ? Colors.green
                                                : Colors.red),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }))
                .toList(),
          ),
        ],
      ),
    );
  }
}
