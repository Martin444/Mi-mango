import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  AnimationController? controller;

  @override
  Widget build(BuildContext context) {
    return Bounce(
      infinite: true,
      child: Center(
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
