import 'package:flutter/material.dart';

Color primaryOrange = Color(0xFFFFB801);
Color bluefacebook = Color(0xFF3B5998);
Color pinkfacebook = Color(0xFFFF820D);

LinearGradient myGradient = LinearGradient(
  stops: [
    -2.3,
    0.6,
    0.4,
    5.2,
  ],
  colors: [
    Color(0xFFFF1502), // arriba
    Color(0xFFFE6900), // arriba
    Color(0xFFFE6900), // arriba
    Color(0xFFFFB801) // abajo
  ],
);

TextStyle primatyText = TextStyle(
  fontFamily: 'Sniglet',
  fontSize: 25,
  color: Colors.black,
);
TextStyle subTitleText = TextStyle(
  fontFamily: 'Sniglet',
  fontSize: 20,
  color: Colors.black,
);
TextStyle subTitleTextWhite = TextStyle(
  fontFamily: 'Sniglet',
  fontSize: 20,
  color: Colors.white,
);
TextStyle subTitleText2 = TextStyle(
  fontFamily: 'Sniglet',
  fontSize: 22,
  color: Colors.black,
);
TextStyle secondaryText = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w300,
  color: Colors.black,
);
