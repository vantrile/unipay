class DataPaymentDetails {
  final int month;
  final int payment;

  DataPaymentDetails(this.month, this.payment);

  static List<DataPaymentDetails> getListDataPayment() {
    return [
      DataPaymentDetails(1, 200),
      DataPaymentDetails(2, 300),
      DataPaymentDetails(3, 600),
      DataPaymentDetails(4, 800),
      DataPaymentDetails(5, 1000),
      DataPaymentDetails(6, 2000),
      DataPaymentDetails(7, 1800),
      DataPaymentDetails(8, 600),
      DataPaymentDetails(9, 100),
    ];
  }
}
