import 'package:flutter/material.dart';
import 'package:unipay/Themes/ConstString.dart';

import '../Themes/CustomColors.dart';
import 'PreviousTransactionsWidget.dart';
import 'RecentTransactionWidget.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Transaction History'),
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ConstString.strTitleRecentTransactions,
                        textAlign: TextAlign.start),
                    RecentTransactionWidget(size: size),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(ConstString.strPreviousTransactions,
                        textAlign: TextAlign.start),
                    PreviousTransactionsWidget(size: size),
                    PreviousTransactionsWidget(
                        size: size), // list Previous Transactions
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
