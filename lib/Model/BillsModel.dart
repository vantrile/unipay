class BillsModel {
  final String? iconPath;
  final String? price;
  final String? description;

  BillsModel({this.iconPath, this.price, this.description});

  static List<BillsModel> getListBills() {
    return [
      BillsModel(
          iconPath: 'assets/images/dribbble-icon.png',
          price: 'Rp 800.000 / Years',
          description: 'Subcriber Pro Dribble'),
      BillsModel(
          iconPath: 'assets/images/Adobe_Photoshop_CC_icon 1.png',
          price: 'Rp 800.000 / Years',
          description: 'Subcriber Pro Dribble'),
      BillsModel(
          iconPath: 'assets/images/dribbble-icon.png',
          price: 'Rp 800.000 / Years',
          description: 'Subcriber Pro Dribble'),
      BillsModel(
          iconPath: 'assets/images/Adobe_Photoshop_CC_icon 1.png',
          price: 'Rp 800.000 / Years',
          description: 'Subcriber Pro Dribble'),
      BillsModel(
          iconPath: 'assets/images/dribbble-icon.png',
          price: 'Rp 800.000 / Years',
          description: 'Subcriber Pro Dribble'),
      BillsModel(
          iconPath: 'assets/images/Adobe_Photoshop_CC_icon 1.png',
          price: 'Rp 800.000 / Years',
          description: 'Subcriber Pro Dribble'),
    ];
  }
}
