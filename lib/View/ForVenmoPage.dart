import 'package:flutter/material.dart';
import 'package:unipay/View/Transfer_AllContactsWidget.dart';

import 'Transfer_RecentContactWidget.dart';

class ForVenmoPage extends StatelessWidget {
  const ForVenmoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Column(
        children: const [
          Transfer_RecentContactWidget(),
          SizedBox(
            height: 40,
          ),
          Transfer_AllContactWidget(),
        ],
      )),
    );
  }
}
