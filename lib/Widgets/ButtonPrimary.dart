import 'package:flutter/material.dart';

class ButtonPrimary extends StatefulWidget {
  String title;

  ButtonPrimary({@required this.title});
  @override
  _ButtonPrimaryState createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Hola');
      },
      child: Container(
        height: 60,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            stops: [
              0.0,
              0.0,
              2.2,
            ],
            colors: [
              Color(0xFFFE6900), // arriba
              Color(0xFFFE6900), // arriba
              Color(0xFFFFB801) // abajo
            ],
          ),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
