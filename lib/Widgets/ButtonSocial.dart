import 'package:flutter/material.dart';

class ButtonSocial extends StatefulWidget {
  String title;
  Color color;

  ButtonSocial({@required this.title, this.color});
  @override
  _ButtonSocialState createState() => _ButtonSocialState();
}

class _ButtonSocialState extends State<ButtonSocial> {
  @override
  Widget build(BuildContext context) {
    widget.color ??= Colors.white;

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
          color: widget.color,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15.0,
            )
          ],
        ),
        child: Image.asset(widget.title),
      ),
    );
  }
}
