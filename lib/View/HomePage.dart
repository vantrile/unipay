import 'package:flutter/material.dart';
import 'package:unipay/Themes/ConstString.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';
import 'package:unipay/View/TransactionHistoryPage.dart';

import 'CardInfoWidget.dart';
import 'CategoryHome.dart';
import 'UserItemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listUser = ['Surmati', 'Mariana', 'Jimanti', 'Jumin'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  ConstString.strBalance,
                  style: TextStyle(
                    color: CustomColors.colorContentText,
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Rp 5.200.000',
                    style: CustomStyle.styleValueTransfer,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryHome(
                          strPathIcon: 'assets/images/transfer.png',
                          categoryName: 'Transfer'),
                      CategoryHome(
                          strPathIcon: 'assets/images/top_up.png',
                          categoryName: 'Top up'),
                      CategoryHome(
                          strPathIcon: 'assets/images/bill_icon.png',
                          categoryName: 'Bill'),
                      CategoryHome(
                          strPathIcon: 'assets/images/more_icon.png',
                          categoryName: 'More'),
                      // Image.asset('assets/images/top_up.png'),
                      // Image.asset('assets/images/bill_icon.png'),
                      // Image.asset('assets/images/more_icon.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 10,
                  ),
                  child: Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                      color: CustomColors.backgroundText,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30, right: 30),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Send Again',
                                  style: CustomStyle.styleSmallTitle,
                                ),
                                TextButton(
                                    onPressed: () {
                                      debugPrint("see all pressed");
                                    },
                                    child: Text(
                                      'See All',
                                      style: CustomStyle.styleTextButtonTitle,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: listUser
                                  .map((e) => Builder(builder: (context) {
                                        return UserItemWidget(
                                            name: e.toString(),
                                            strPathIcon:
                                                'assets/images/avatar_user.png');
                                      }))
                                  .toList(),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Your Card',
                                        style: CustomStyle.styleSmallTitle,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            // print("see all pressed");
                                            debugPrint('see all pressed');
                                          },
                                          child: Text(
                                            'Add',
                                            style: CustomStyle
                                                .styleTextButtonTitle,
                                          )),
                                    ],
                                  ),
                                ),
                                const CardInfoWidget(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 20, right: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute<Widget>(
                                              builder: (context) {
                                        return const TransactionHistoryPage();
                                      }));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          ConstString.strTransactionHistory,
                                          style: CustomStyle.styleSmallTitle,
                                        ),
                                        Image.asset(
                                          'assets/images/arrow_right.png',
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
