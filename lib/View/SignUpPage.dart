import 'package:flutter/material.dart';
import 'package:unipay/Themes/ConstString.dart';
import 'package:unipay/Themes/CustomColors.dart';
import 'package:unipay/Themes/CustomStyle.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.backgroundText,
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          margin: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                ConstString.strTitleSignUp,
                style: CustomStyle.titleVerificationStyle,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/Icon_username.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Username',
                                style: CustomStyle.styleTextButton,
                              ),
                              Text(
                                'Write Your UserName',
                                style: CustomStyle.styleNormalText,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 30),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/icon_email.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: CustomStyle.styleTextButton,
                              ),
                              Text(
                                'Write Your Email Here',
                                style: CustomStyle.styleNormalText,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 30),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/Icon_password.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: CustomStyle.styleTextButton,
                              ),
                              Text(
                                '******',
                                style: CustomStyle.styleNormalText,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 30),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                    child: ElevatedButton(
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
                      onPressed: () {},
                      child: SizedBox(
                        height: size.height / 15,
                        child: const Center(
                          child: Text('Login Now'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: ConstString.strDontHaveAccount),
                    TextSpan(
                        text: ' Login Now',
                        style: TextStyle(color: CustomColors.blueColor))
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
