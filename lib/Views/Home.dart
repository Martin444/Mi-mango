import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/conts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          elevation: 0,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Image.asset(
                        "assets/logo.png",
                        height: 75,
                        width: 64,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Builder(
                      builder: (context) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Postularme',
                              style: secondaryText,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Cerrar sesión',
                              style: secondaryText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
      body: Stack(
        children: [
          BackGradient(),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Builder(
                    builder: (context) {
                      return IconButton(
                        icon: SvgPicture.asset(
                          "assets/menu.svg",
                          height: 20,
                          width: 34,
                        ),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CardBlured(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hola, Martin!',
                              style: primatyText,
                            ),
                            Text(
                              '¿A quién precisas hoy?',
                              style: secondaryText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Filtrar',
                          style: subTitleText,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/filter.png'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
