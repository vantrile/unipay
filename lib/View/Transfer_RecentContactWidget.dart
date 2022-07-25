import 'package:flutter/material.dart';
import 'package:unipay/View/TransferMoneyPage.dart';

import '../Model/UserContactModel.dart';
import '../Themes/CustomStyle.dart';

class Transfer_RecentContactWidget extends StatelessWidget {
  const Transfer_RecentContactWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Contacts',
          style: CustomStyle.styleSmallTitle,
          textAlign: TextAlign.start,
        ),
        Column(
          children: UserContactModel.getListRecentContact()
              .map(
                (e) => Builder(
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const TransferMoneyPage();
                          }));
                        },
                        child: Row(
                          children: [
                            Image.asset(e.avatarPath),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    e.userName,
                                    style: CustomStyle.styleNormalTextWithBold,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    e.bankInfo,
                                    style: CustomStyle.styleNormalText,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
