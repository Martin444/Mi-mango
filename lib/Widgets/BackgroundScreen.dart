import 'package:flutter/material.dart';

class BackGradient extends StatefulWidget {
  double height;

  BackGradient({Key key, this.height}); //hei

  @override
  _BackGradientState createState() => _BackGradientState();
}

class _BackGradientState extends State<BackGradient> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    print(screenHeight);

    widget.height ??= screenHeight;

    return Container(
      width: screenWidth,
      height: widget.height,
      color: Color.fromRGBO(254, 220, 201, 0.3),
      child: Stack(
        alignment: Alignment(1.6, -1.7),
        children: [
          Container(
            // width: 300,
            child: ClipPath(
              child: new Container(
                width: screenWidth,
                height: 200.0,
                color: Colors.red,
              ),
              clipper: CustomClipPath(),
            ),
          ),
          Positioned(
            bottom: screenHeight / 1.4,
            right: screenWidth / 1.22,
            child: Container(
              margin: EdgeInsets.only(top: 120, left: 100),
              width: screenHeight / 5,
              height: screenHeight / 5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    -2.3,
                    0.4,
                    0.4,
                    5.2,
                  ],
                  colors: [
                    Color(0xFFFF1502).withOpacity(0.6), // arriba
                    Color(0xFFFE6900).withOpacity(0.6), // arriba
                    Color(0xFFFE6900).withOpacity(0.6), // arriba
                    Color(0xFFFFB801).withOpacity(0.6) // abajo
                  ],
                ),
                borderRadius: BorderRadius.circular(screenHeight / 2),
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight / 1.12,
            right: screenWidth / 1.4,
            child: Container(
              margin: EdgeInsets.only(top: 120, left: 100),
              width: screenHeight / 30,
              height: screenHeight / 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    -2.3,
                    0.4,
                    0.4,
                    5.2,
                  ],
                  colors: [
                    Color(0xFFFF1502).withOpacity(0.6), // arriba
                    Color(0xFFFE6900).withOpacity(0.6), // arriba
                    Color(0xFFFE6900).withOpacity(0.6), // arriba
                    Color(0xFFFFB801).withOpacity(0.6) // abajo
                  ],
                ),
                borderRadius: BorderRadius.circular(screenHeight / 2),
              ),
            ),
          ),
          Positioned(
            bottom: -65,
            left: -60,
            child: Container(
              margin: EdgeInsets.only(top: 420, left: 20),
              width: screenHeight / 4,
              height: screenHeight / 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  stops: [
                    -2.3,
                    0.6,
                    0.4,
                    5.2,
                  ],
                  colors: [
                    Color(0xFFFF1502).withOpacity(0.6), // arriba
                    Color(0xFFFE6900).withOpacity(0.6), // arriba
                    Color(0xFFFE6900).withOpacity(0.6), // arriba
                    Color(0xFFFFB801).withOpacity(0.6) // abajo
                  ],
                ),
                borderRadius: BorderRadius.circular(screenHeight / 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(200, size.height);
    path.quadraticBezierTo(
        size.width / 19, size.height - 40, size.width / 2, size.height - 90);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
