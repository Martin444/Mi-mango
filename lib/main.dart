import 'package:flutter/material.dart';
import 'package:mimango/Views/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Mango',
      home: LoginPage(),
    );
  }
}
