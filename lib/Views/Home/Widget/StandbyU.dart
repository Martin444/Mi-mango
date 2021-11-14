import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Views/Postulate/AboutMimango.dart';
import 'package:mimango/Widgets/ButtonPrimary.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/anim/delayed_reveal.dart';
import 'package:mimango/Widgets/conts.dart';

class StandByUser extends StatefulWidget {
  const StandByUser({Key? key}) : super(key: key);

  @override
  _StandByUserState createState() => _StandByUserState();
}

class _StandByUserState extends State<StandByUser> {
  @override
  Widget build(BuildContext context) {
    return DelayedReveal(
      delay: Duration(milliseconds: 1000),
      child: CardBlured(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                child: Text(
                  '¡Que gusto tenerte aquí!',
                  textAlign: TextAlign.center,
                  style: subTitleText,
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  '¡Aún estamos trabajando en sumar todo el talento local en un sólo lugar!',
                  textAlign: TextAlign.center,
                  style: secondaryText,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: SvgPicture.asset('assets/searchpeople.svg'),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  'Si tenés una habilidad y ganas de trabajar, podes enviarnos tu solicitúd',
                  textAlign: TextAlign.center,
                  style: secondaryText,
                ),
              ),
              SizedBox(height: 30),
              ButtonPrimary(
                title: 'Postularme',
                onFunction: () {
                  Get.to(
                    () => AboutMimango(),
                    transition: Transition.fadeIn,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
