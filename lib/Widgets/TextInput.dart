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
<<<<<<< HEAD
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15.0,
          )
        ],
      ),
=======
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15.0,
            )
          ]),
>>>>>>> 307769fa34da0f62d20a7d93917bd4d9caa5744b
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
