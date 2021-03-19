import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15.0,
            )
          ]),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Correo electronico',
          fillColor: Color(0xFFFFFFF),
          focusColor: Colors.white,
          hoverColor: Colors.white,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
