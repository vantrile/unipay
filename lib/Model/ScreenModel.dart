import 'package:flutter/material.dart';
import 'package:unipay/View/BillDetailsPage.dart';
import 'package:unipay/View/BillPage.dart';
import 'package:unipay/View/CardDetailsPage.dart';
import 'package:unipay/View/HomePage.dart';
import 'package:unipay/View/LoginPage.dart';
import 'package:unipay/View/SignUpPage.dart';
import 'package:unipay/View/SplashScreen.dart';
import 'package:unipay/View/SuccessPaymentPage.dart';
import 'package:unipay/View/TransactionHistoryPage.dart';
import 'package:unipay/View/TransferMoneyPage.dart';
import 'package:unipay/View/TransferPage.dart';
import 'package:unipay/View/VerificationLoadingPage.dart';
import 'package:unipay/View/VerificationPage.dart';
import 'package:unipay/View/YourCardPage.dart';

class ScreenModel {
  String screenName;
  Widget widgetName;

  ScreenModel({required this.screenName, required this.widgetName});

  static List<ScreenModel> getListScreen() {
    return [
      ScreenModel(
          screenName: 'Splash Screen', widgetName: const SplashScreen()),
      ScreenModel(
          screenName: 'Verification Code',
          widgetName: const VerificationPage()),
      ScreenModel(
          screenName: 'Verification Code (loading)',
          widgetName: const VerificationLoadingPage()),
      ScreenModel(screenName: 'Home Page', widgetName: const HomePage()),
      ScreenModel(screenName: 'Transfer', widgetName: const TransferPage()),
      ScreenModel(
          screenName: 'Transfer - details ',
          widgetName: const TransferMoneyPage()),
      ScreenModel(
          screenName: 'Succes Payment', widgetName: const SuccessPaymentPage()),
      ScreenModel(
          screenName: 'Login', widgetName: const LoginPage()),
      ScreenModel(screenName: 'Sign Up', widgetName: const SignUpPage()),
      ScreenModel(screenName: 'Transaction History', widgetName: const TransactionHistoryPage()),
      ScreenModel(screenName: 'Your Card', widgetName: const YourCardPage()),
      ScreenModel(screenName: 'Your Card - details', widgetName: CardDetailsPage()),
      ScreenModel(screenName: 'Bill', widgetName: const BillPage()),
      ScreenModel(screenName: 'Bill(details)', widgetName: const BillDetailsPage()),

    ];
  }
}
