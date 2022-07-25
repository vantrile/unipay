import 'package:flutter/material.dart';

class UserItemWidget extends StatelessWidget {
  String strPathIcon;
  String name;

  UserItemWidget({Key? key, required this.strPathIcon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(strPathIcon),
        const SizedBox(height: 10),
        Text(name),
      ],
    );
  }
}
