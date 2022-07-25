class PaymentMethodModel {
  final String iconPath;
  final String paymentName;
  final String seriNumber;
  final bool isChecked;

  PaymentMethodModel(
      {required this.iconPath,
      required this.paymentName,
      required this.seriNumber,
      required this.isChecked});

  static List<PaymentMethodModel> getListPayments() {
    return [
      PaymentMethodModel(
          iconPath: 'assets/images/Icon_User.png',
          paymentName: 'Local Back',
          seriNumber: '**** **** **** 1234',
          isChecked: true),
      PaymentMethodModel(
          iconPath: 'assets/images/Icon_SwiftBack.png',
          paymentName: 'Swift Back',
          seriNumber: '**** **** **** 1234',
          isChecked: false),
      PaymentMethodModel(
          iconPath: 'assets/images/Icon_User.png',
          paymentName: 'Local Back',
          seriNumber: '**** **** **** 1234',
          isChecked: false),
    ];
  }
}
