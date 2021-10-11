import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/ButtonPrimary.dart';
import 'package:mimango/Widgets/ButtonSocial.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/UserController.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var login = Get.find<UserController>();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BackGradient(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.asset('assets/logo.png'),
                          Text(
                            'mi mango',
                            style: primatyText,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        'Encontrá a los mejores profesionales de tu zona',
                        textAlign: TextAlign.center,
                        style: secondaryText,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: SvgPicture.asset(
                        'assets/jobinit.svg',
                        height: Get.height / 2.8,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonPrimary(
                      title: 'Iniciar con Google',
                      onFunction: () {
                        login.loginWhitGoogle();
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
