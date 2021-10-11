import 'package:flutter/material.dart';

class ButtonSecundary extends StatefulWidget {
  String? title;

  ButtonSecundary({@required this.title});
  @override
  _ButtonSecundaryState createState() => _ButtonSecundaryState();
}

class _ButtonSecundaryState extends State<ButtonSecundary> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Hola');
      },
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(
            // horizontal: 20,
            ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          widget.title!,
          style: TextStyle(
            color: Color(0xFFFE6900),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
