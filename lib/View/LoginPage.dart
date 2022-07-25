import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unipay/View/HomePage.dart';
import 'package:unipay/View/SignUpPage.dart';

import '../Themes/ConstString.dart';
import '../Themes/CustomColors.dart';
import '../Themes/CustomStyle.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                ConstString.strTitleLogin,
                textAlign: TextAlign.center,
                style: CustomStyle.titleVerificationStyle,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 30, bottom: 30),
                child: Row(
                  mainAxisAlignment: isLandscape
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google sign in.png'),
                    Image.asset('assets/images/facebook sign in.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  ConstString.strLoginWithEmail,
                  style: CustomStyle.styleNormalText,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/icon_email.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Email'),
                              Text('lqbalsurya376@gmail.com'),
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
                            children: const [
                              Text('Password'),
                              Text('lqbalsurya376@gmail.com'),
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
                    Container(
                      width: size.width,
                      child: Text(
                        ConstString.strForgotPassword,
                        style: CustomStyle.titleSmallStyle,
                        textAlign: TextAlign.end,
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
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      },
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
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const SignUpPage();
                              })),
                        text: ' Register Now',
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
