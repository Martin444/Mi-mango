import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/anim/delayed_reveal.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/UserController.dart';

import 'Widget/HeaderUser.dart';
import 'Widget/StandbyU.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userCon = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          elevation: 0,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Image.asset(
                        "assets/logo.png",
                        height: 75,
                        width: 64,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Builder(
                      builder: (context) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Postularme',
                              style: secondaryText,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              userCon.signOut();
                              Scaffold.of(context).openEndDrawer();
                            },
                            child: Text(
                              'Cerrar sesión',
                              style: secondaryText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
      body: Stack(
        children: [
          BackGradient(),
          Column(
            children: [
              HeaderUser(userCon: userCon),
              SizedBox(
                height: 10,
              ),
              // DelayedReveal(
              //   delay: Duration(milliseconds: 1400),
              //   child: Container(
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: [
              //         Text(
              //           'Filtrar',
              //           style: subTitleText,
              //         ),
              //         IconButton(
              //           onPressed: () {},
              //           icon: Image.asset('assets/filter.png'),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              Spacer(
                flex: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: StandByUser(),
              ),
              Spacer(
                flex: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
