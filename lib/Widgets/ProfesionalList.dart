import 'package:flutter/material.dart';
import 'package:mimango/Widgets/conts.dart';

import 'ProfesionalTile.dart';

class PofesionalList extends StatelessWidget {
  const PofesionalList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profesionales disponibles',
            style: subTitleText,
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.only(
                bottom: 80,
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfesionalTile(),
                  ProfesionalTile(),
                  ProfesionalTile(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
