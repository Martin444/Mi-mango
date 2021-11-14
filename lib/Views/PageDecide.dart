import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:mimango/Views/Home/Home.dart';
import 'package:mimango/controllers/UserController.dart';
import 'Login.dart';

class PageDecide extends StatefulWidget {
  const PageDecide({Key? key}) : super(key: key);

  @override
  _PageDecideState createState() => _PageDecideState();
}

class _PageDecideState extends State<PageDecide> {
  @override
  Widget build(BuildContext context) {
    var setUser = Get.find<UserController>();
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot snap) {
        if (snap.hasData) {
          setUser.setDataUserLocal(snap.data);
          return HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}
