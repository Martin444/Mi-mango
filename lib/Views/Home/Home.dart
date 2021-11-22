import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/ProfesionalList.dart';
import 'package:mimango/Widgets/SeedList.dart';
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
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                HeaderUser(userCon: userCon),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: StandByUser(),
                ),
                SeedList(),
                SizedBox(
                  height: 20,
                ),
                PofesionalList(),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Builder(
                builder: (context) {
                  return DelayedReveal(
                    delay: Duration(milliseconds: 400),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          "assets/menu.svg",
                          height: 20,
                          width: 34,
                          color: Colors.black,
                        ),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
