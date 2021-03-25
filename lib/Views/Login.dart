import 'package:flutter/material.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/BottonSecundary.dart';
import 'package:mimango/Widgets/ButtonPrimary.dart';
import 'package:mimango/Widgets/ButtonSocial.dart';
import 'package:mimango/Widgets/TextInput.dart';
import 'package:mimango/Widgets/conts.dart';

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
                            style: TextStyle(
                              fontFamily: 'Sniglet',
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('¿Aun no tienes cuenta?'),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Registrate',
                            style: TextStyle(
                              color: Color(0xFFFE6900),
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                    ButtonSecundary(
                      title: 'No recuerdo mi contraseña',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ButtonSocial(
                            title: 'assets/facebook.png',
                            color: bluefacebook,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ButtonSocial(
                            title: 'assets/google.png',
                          ),
                        ),
                      ],
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
