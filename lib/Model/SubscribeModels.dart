class SubscribeModels {
  final String pathIcon;
  final String price;
  final String channelName;

  SubscribeModels(
      {required this.pathIcon, required this.price, required this.channelName});

  static List<SubscribeModels> getListSubscriber() {
    return [
      SubscribeModels(
          pathIcon: 'assets/images/DreamWorks_Icon.png',
          price: 'Rp 500.000/Years',
          channelName: 'Subscriber Disney \n Channel'),
      SubscribeModels(
          pathIcon: 'assets/images/Freepik_Icon.png',
          price: 'Rp 500.000/Years',
          channelName: 'Subscriber Disney \n Channel'),
      SubscribeModels(
          pathIcon: 'assets/images/DreamWorks_Icon.png',
          price: 'Rp 500.000/Years',
          channelName: 'Subscriber Disney \n Channel'),
      SubscribeModels(
          pathIcon: 'assets/images/Freepik_Icon.png',
          price: 'Rp 500.000/Years',
          channelName: 'Subscriber Disney \n Channel'),
    ];
  }
}
