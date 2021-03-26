import 'package:flutter/material.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/BottonSecundary.dart';
import 'package:mimango/Widgets/ButtonPrimary.dart';
import 'package:mimango/Widgets/ButtonSocial.dart';
import 'package:mimango/Widgets/TextInput.dart';
import 'package:mimango/Widgets/conts.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
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
                        'Crea tu cuenta',
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
                      height: 10,
                    ),
                    TextInput(),
                    SizedBox(
                      height: 10,
                    ),
                    TextInput(),
                    SizedBox(
                      height: 10,
                    ),
                    TextInput(),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonPrimary(
                      title: 'Registrate',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('¿Ya tienes una cuena?'),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Inicia sesion',
                            style: TextStyle(
                              color: Color(0xFFFE6900),
                              fontSize: 16,
                            ),
                          ),
                        )
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
