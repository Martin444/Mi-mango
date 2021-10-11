import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonSocial extends StatefulWidget {
  String? title;
  Color? color;
  VoidCallback? onTap;

  ButtonSocial({@required this.title, this.color, this.onTap});
  @override
  _ButtonSocialState createState() => _ButtonSocialState();
}

class _ButtonSocialState extends State<ButtonSocial> {
  @override
  Widget build(BuildContext context) {
    widget.color ??= Colors.white;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 50,
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
        child: Image.asset(widget.title!),
      ),
    );
  }
}
