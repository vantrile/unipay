import 'package:flutter/material.dart';
import 'package:unipay/View/BillPage.dart';
import 'package:unipay/View/TransferPage.dart';

class CategoryHome extends StatelessWidget {
  String strPathIcon;
  String categoryName;

  CategoryHome(
      {Key? key, required this.strPathIcon, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigatorPage(String itemName) {
      switch (itemName) {
        case 'Transfer':
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const TransferPage();
          }));
          break;
        case 'Bill':
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const BillPage();
          }));
          break;
      }
    }

    return GestureDetector(
      onTap: () {
        navigatorPage(categoryName);
      },
      child: Column(
        children: [
          Image.asset(strPathIcon),
          const SizedBox(height: 10),
          Text(categoryName),
        ],
      ),
    );
  }
}
