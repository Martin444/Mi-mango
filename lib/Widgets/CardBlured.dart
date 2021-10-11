import 'dart:ui';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardBlured extends StatelessWidget {
  Widget? child;

  CardBlured({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
          ),
          child: child,
        ),
      ),
    );
  }
}
