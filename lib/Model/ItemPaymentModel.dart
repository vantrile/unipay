class ItemPaymentModel {
  final String iconPath;
  final String itemName;
  final String price;

  ItemPaymentModel(
      {required this.iconPath, required this.itemName, required this.price});

  static List<ItemPaymentModel> getListPayment() {
    return [
      ItemPaymentModel(
          iconPath: 'assets/images/Icon_Equipment.png',
          itemName: 'Equidments',
          price: 'Rp 2.500.00'),
      ItemPaymentModel(
          iconPath: 'assets/images/Icon_Shopping.png',
          itemName: 'Shopping',
          price: 'Rp 3.000.000'),
      ItemPaymentModel(
          iconPath: 'assets/images/Icon_Entertainment.png',
          itemName: 'Entertainment',
          price: 'Rp 200.000'),
      ItemPaymentModel(
          iconPath: 'assets/images/Icon_OfficeItem.png',
          itemName: 'Office Item',
          price: 'Rp 100.000'),
    ];
  }

  static List<ItemPaymentModel> getListPaymentDetails() {
    return [
      ItemPaymentModel(
          iconPath: 'assets/images/Icon_BurgerKing.png',
          itemName: 'Burger King',
          price: '-Rp 250.000'),
      ItemPaymentModel(
          iconPath: 'assets/images/Icon_KFC.png',
          itemName: 'KFC',
          price: '-Rp 500.000'),
      ItemPaymentModel(
          iconPath: 'assets/images/Icon_MCDonald.png',
          itemName: 'MCDonald\'s',
          price: '-Rp 1.550.000'),
    ];
  }
}
