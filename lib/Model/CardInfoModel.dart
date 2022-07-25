class CardInfoModel {
  String iconCard;
  String cardName;
  String moneyValue;
  String cardNumber;
  String dateCard;

  CardInfoModel(
      {required this.iconCard,
      required this.cardName,
      required this.moneyValue,
      required this.cardNumber,
      required this.dateCard});

  static List<CardInfoModel> getListCard() {
    CardInfoModel visaCard = CardInfoModel(
        iconCard: 'assets/images/Ic_visa master.png',
        cardName: 'Visa Master',
        moneyValue: 'Rp 200.000',
        cardNumber: '6013',
        dateCard: '01/23');
    CardInfoModel masterCard = CardInfoModel(
        iconCard: 'assets/images/Icon_master card.png',
        cardName: 'Visa Master',
        moneyValue: 'Rp 200.000',
        cardNumber: '6013',
        dateCard: '01/23');

    List<CardInfoModel> listCard = [];
    listCard.add(visaCard);
    listCard.add(masterCard);
    return listCard;
  }
}
