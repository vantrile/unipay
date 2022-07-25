import 'package:flutter/material.dart';

import '../Model/UserContactModel.dart';
import '../Themes/CustomStyle.dart';

class Transfer_AllContactWidget extends StatelessWidget {
  const Transfer_AllContactWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'All Contacts',
          style: CustomStyle.styleSmallTitle,
          textAlign: TextAlign.start,
        ),
        Column(
          children: UserContactModel.getListAllContact()
              .map(
                (e) => Builder(
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
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
