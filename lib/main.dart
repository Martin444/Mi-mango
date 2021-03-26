import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimango/Views/Login.dart';
import 'package:mimango/controllers/UserController.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put<UserController>(UserController());
    return GetMaterialApp(
      title: 'Mi Mango',
      home: LoginPage(),
    );
  }
}
