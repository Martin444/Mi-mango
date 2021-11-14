import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/anim/delayed_reveal.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/UserController.dart';

class HeaderUser extends StatelessWidget {
  const HeaderUser({
    Key? key,
    required this.userCon,
  }) : super(key: key);

  final UserController userCon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Builder(
              builder: (context) {
                return DelayedReveal(
                  delay: Duration(milliseconds: 400),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      "assets/menu.svg",
                      height: 20,
                      width: 34,
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            DelayedReveal(
              delay: Duration(milliseconds: 1000),
              child: CardBlured(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage('${userCon.user!.photoURL}'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hola, ${userCon.user!.name!.split(' ')[0]}!',
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
            ),
          ],
        ),
      ),
    );
  }
}
