import 'package:flutter/material.dart';

class BackGradient extends StatefulWidget {
  String title = "Lavado";
  double height = 100;

  BackGradient({Key key, this.title, this.height}); //hei

  @override
  _BackGradientState createState() => _BackGradientState();
}

class _BackGradientState extends State<BackGradient> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

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
            child: FittedBox(
              fit: BoxFit.none,
              // alignment: Alignment(-1.3, 2.5),
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xFFFE6900),
                  borderRadius: BorderRadius.circular(screenHeight / 2),
                ),
              ),
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
