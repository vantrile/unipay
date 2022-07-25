import 'package:flutter/material.dart';

import '../Themes/CustomColors.dart';
import '../Themes/CustomStyle.dart';

class VisaCardWidget extends StatelessWidget {
  const VisaCardWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      width: size.width,
      height: (size.width * 3) / 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          gradient: LinearGradient(
              colors: [CustomColors.color1, CustomColors.color2]),
          image: const DecorationImage(
            image: AssetImage('assets/images/mask_atm.png'),
            fit: BoxFit.fill,
            repeat: ImageRepeat.noRepeat,
          )),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 40,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.height / 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rp 5.200.00',
                        style: CustomStyle.styleTextWithBold,
                      ),
                      Image.asset('assets/images/Visa.png'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.height / 20,
                    vertical: size.width / 20,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text('****'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text('****'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text('****'),
                      ),
                      Text('1284'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.height / 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CARD HOLDER',
                              style: CustomStyle.titleSmallStyle,
                            ),
                            Text(
                              'Benny Setiawan',
                              style: CustomStyle.titleSmallStyleBold,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EXPIRES',
                            style: CustomStyle.titleSmallStyle,
                          ),
                          Text(
                            '01/23',
                            style: CustomStyle.titleSmallStyleBold,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CVV',
                              style: CustomStyle.titleSmallStyle,
                            ),
                            Text(
                              '6013',
                              style: CustomStyle.titleSmallStyleBold,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Image.asset(
                'assets/images/point.png',
                height: size.height,
                width: size.width * 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
