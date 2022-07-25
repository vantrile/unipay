class RecentTransactionModel {
  final String? avatarPath;
  final String? userName;
  final String? recentDate;
  final String? recentValue;
  final String? statusTransaction;
  final bool? isReceived;

  RecentTransactionModel(
      {this.avatarPath,
      this.userName,
      this.recentDate,
      this.recentValue,
      this.statusTransaction,
      this.isReceived});

  static List<RecentTransactionModel> getRecentTransactions() {
    List<RecentTransactionModel> listData = [];
    RecentTransactionModel item1 = RecentTransactionModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Willy Smith',
        recentDate: '07 Des 2020',
        recentValue: '+Rp 10.000',
        statusTransaction: 'Received',
        isReceived: true);

    RecentTransactionModel item2 = RecentTransactionModel(
      avatarPath: 'assets/images/avatar_user.png',
      userName: 'Natalia Rel',
      recentDate: '10 Des 2020',
      recentValue: '-Rp 50.000',
      statusTransaction: 'Sent',
      isReceived: false,
    );
    RecentTransactionModel item3 = RecentTransactionModel(
      avatarPath: 'assets/images/avatar_user.png',
      userName: 'Angelia moth',
      recentDate: '20 Des 2020',
      recentValue: '+Rp 20.000',
      statusTransaction: 'Sent',
      isReceived: false,
    );
    listData.add(item1);
    listData.add(item2);
    listData.add(item3);
    return listData;
  }

  static List<RecentTransactionModel> getPreviousTransactions() {
    List<RecentTransactionModel> listData = [];
    RecentTransactionModel item1 = RecentTransactionModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Rauel Nindian',
        recentDate: '07 Des 2020',
        recentValue: '+Rp 100.000',
        statusTransaction: 'Received',
        isReceived: true);

    RecentTransactionModel item2 = RecentTransactionModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Natalia Rel',
        recentDate: '10 Des 2020',
        recentValue: '-Rp 50.000',
        statusTransaction: 'Sent',
        isReceived: false);

    listData.add(item1);
    listData.add(item2);
    return listData;
  }
}
