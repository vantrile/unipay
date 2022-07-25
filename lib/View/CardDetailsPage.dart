import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:unipay/Themes/CustomStyle.dart';

import '../Model/DataPaymentDetails.dart';
import '../Model/ItemPaymentModel.dart';
import '../Themes/CustomColors.dart';

class CardDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CardDetailsPageState();
  }
}

class CardDetailsPageState extends State<CardDetailsPage> {
  List<DataPaymentDetails>? charData;

  void initState() {
    charData = DataPaymentDetails.getListDataPayment();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          'Food-Details',
          style: TextStyle(
              fontSize: 14, color: Colors.white, fontFamily: 'Poppins'),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Balance',
                  style: CustomStyle.titleStyle, textAlign: TextAlign.center),
              Text(
                'Rp 5.200.000',
                style: CustomStyle.styleValueTransfer,
              ),
              Container(
                height: size.height / 2,
                child: SfCartesianChart(
                  series: <ChartSeries>[
                    LineSeries<DataPaymentDetails, int>(
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                        dataSource: charData!,
                        xValueMapper: (DataPaymentDetails data, index) =>
                            data.month,
                        yValueMapper: (DataPaymentDetails data, index) =>
                            data.payment),
                  ],
                  primaryYAxis: NumericAxis(
                      numberFormat:
                          NumberFormat.simpleCurrency(decimalDigits: 0)),
                ),
              ),
              Container(
                width: size.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: CustomColors.backgroundText,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: ItemPaymentModel.getListPaymentDetails()
                      .map((e) => Builder(builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Image.asset(e.iconPath),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      e.itemName,
                                      style: CustomStyle.styleNormalText,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(e.price,
                                        textAlign: TextAlign.start),
                                  ),
                                ],
                              ),
                            );
                          }))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
