class UserContactModel {
  String avatarPath;
  String userName;
  String bankInfo;

  UserContactModel(
      {required this.avatarPath,
      required this.userName,
      required this.bankInfo});

  static List<UserContactModel> getListRecentContact() {
    UserContactModel item1 = UserContactModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Samantha',
        bankInfo: 'Bank - 0987 3422 8756');
    UserContactModel item2 = UserContactModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Karen William',
        bankInfo: 'Bank - 0987 3422 8756');

    UserContactModel item3 = UserContactModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Angela Smith',
        bankInfo: 'Bank - 0987 3422 8756');

    List<UserContactModel> listData = [item1, item2, item3];
    return listData;
  }

  static List<UserContactModel> getListAllContact() {
    UserContactModel item1 = UserContactModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Samantha',
        bankInfo: 'Bank - 0987 3422 8756');
    UserContactModel item2 = UserContactModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Karen William',
        bankInfo: 'Bank - 0987 3422 8756');

    UserContactModel item3 = UserContactModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Angela Smith',
        bankInfo: 'Bank - 0987 3422 8756');

    UserContactModel item4 = UserContactModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Samantha',
        bankInfo: 'Bank - 0987 3422 8756');
    UserContactModel item5 = UserContactModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Karen William',
        bankInfo: 'Bank - 0987 3422 8756');

    UserContactModel item6 = UserContactModel(
        avatarPath: 'assets/images/avatar_user.png',
        userName: 'Angela Smith',
        bankInfo: 'Bank - 0987 3422 8756');

    List<UserContactModel> listData = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6
    ];
    return listData;
  }
}
