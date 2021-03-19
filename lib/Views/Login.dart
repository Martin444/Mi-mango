import 'package:flutter/material.dart';
import 'package:mimango/Widgets/BottonSecundary.dart';
import 'package:mimango/Widgets/ButtonPrimary.dart';
import 'package:mimango/Widgets/TextInput.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    //Imagen
    //titulo
    //inputs
    //inputs
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Creando un futuro juntos',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextInput(),
                SizedBox(
                  height: 20,
                ),
                TextInput(),
                SizedBox(
                  height: 40,
                ),
                ButtonPrimary(
                  title: 'Iniciar sesión',
                ),
                ButtonSecundary(
                  title: 'No recuerdo mi contraseña',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
