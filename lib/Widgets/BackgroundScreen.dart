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
            margin: EdgeInsets.only(top: 0, left: 100),
            child: ClipPath(
              child: new Container(
                width: screenWidth / 1.3,
                // height: 200.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      -1.0,
                      0.1,
                      0.4,
                      // 2.9,
                    ],
                    colors: [
                      Color(0xFFFF1502).withOpacity(0.6), // arriba
                      Color(0xFFFE6900).withOpacity(0.6), // arriba
                      // Color(0xFFFE6900).withOpacity(0.6), // arriba
                      Color(0xFFFFB801).withOpacity(0.6) // abajo
                    ],
                  ),
                ),
              ),
              clipper: CustomClipPath(),
            ),
          ),
          Positioned(
            top: -50,
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
            bottom: 630,
            right: 290,
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
    // path.lineTo(0, 0);
    // path.close();
    path.quadraticBezierTo(1.9, 50, 100.9, 50);
    path.quadraticBezierTo(160.4, 60, 180, 100);
    path.quadraticBezierTo(210.4, 200, 300, 200);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
