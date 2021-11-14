import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonPrimary extends StatefulWidget {
  String? title;
  VoidCallback? onFunction;

  ButtonPrimary({
    @required this.title,
    @required this.onFunction,
  });
  @override
  _ButtonPrimaryState createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onFunction,
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            stops: [
              -2.3,
              0.6,
              0.4,
              5.2,
            ],
            colors: [
              Color(0xFFFF1502), // arriba
              Color(0xFFFE6900), // arriba
              Color(0xFFFE6900), // arriba
              Color(0xFFFFB801) // abajo
            ],
          ),
        ),
        child: Text(
          widget.title!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sniglet',
          ),
        ),
      ),
    );
  }
}
