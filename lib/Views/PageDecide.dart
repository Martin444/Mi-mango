import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mimango/Views/Home.dart';
import 'Login.dart';

class PageDecide extends StatefulWidget {
  const PageDecide({Key? key}) : super(key: key);

  @override
  _PageDecideState createState() => _PageDecideState();
}

class _PageDecideState extends State<PageDecide> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot snap) {
        if (snap.hasData) {
          return HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}
