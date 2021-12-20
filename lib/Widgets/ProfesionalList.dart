import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/CurriculumController.dart';

import 'ProfesionalTile.dart';

class PofesionalList extends StatefulWidget {
  const PofesionalList({
    Key? key,
  }) : super(key: key);

  @override
  State<PofesionalList> createState() => _PofesionalListState();
}

class _PofesionalListState extends State<PofesionalList> {
  var cvY = Get.find<CurriculumController>();

  @override
  void initState() {
    super.initState();
    cvY.getCurriculums();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CurriculumController>(
      builder: (_) {
        var profesionals = <ProfesionalTile>[];
        _.curriculums.forEach((curriculum) {
          profesionals.add(ProfesionalTile(
            model: curriculum,
          ));
        });
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
                    bottom: 10,
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: profesionals,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
