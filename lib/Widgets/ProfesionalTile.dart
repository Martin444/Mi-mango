import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimango/Views/Profile/CurriculumPage.dart';
import 'package:mimango/Widgets/CardBlured.dart';

import 'conts.dart';

class ProfesionalTile extends StatelessWidget {
  const ProfesionalTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => CurriculumPage(),
          transition: Transition.fadeIn,
        );
      },
      child: Container(
        width: 180,
        child: Stack(
          alignment: Alignment(-0.0, 2.5),
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Hero(
                  tag: 'profesional',
                  child: Image.network(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    height: 180,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            CardBlured(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Martín Farel',
                      style: primatyText,
                    ),
                    Text(
                      'Obstetra',
                      style: subTitleText,
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
