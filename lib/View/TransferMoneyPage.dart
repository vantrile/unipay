import 'package:flutter/material.dart';
import 'package:unipay/View/SuccessPaymentPage.dart';

import '../Themes/CustomColors.dart';

class TransferMoneyPage extends StatelessWidget {
  const TransferMoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        centerTitle: true,
        shadowColor: Colors.transparent,
        title: const Text(
          'Transfer',
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
          height: size.height,
          color: CustomColors.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height / 3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: TextField(
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Your Money',
                          hintText: 'Enter your money',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SuccessPaymentPage();
                          }));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              CustomColors.colorPrimaryBlue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                          ),
                        ),
                        child: Container(
                          width: size.width,
                          height: size.height / 15,
                          child: const Center(
                            child: Text(
                              'Send Now',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
