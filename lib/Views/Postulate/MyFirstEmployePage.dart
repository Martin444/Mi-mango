import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/CurriculumController.dart';

import 'Widgets/TypeEmployeSelect.dart';

class MyFirstEmployePage extends StatefulWidget {
  const MyFirstEmployePage({Key? key}) : super(key: key);

  @override
  _MyFirstEmployePageState createState() => _MyFirstEmployePageState();
}

class _MyFirstEmployePageState extends State<MyFirstEmployePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CurriculumController>(
      builder: (_) {
        return Container(
          child: Column(
            children: [
              Container(
                child: Text(
                  '¿Cuál es tu objetivo?',
                  style: subTitleText,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Text(
                  'Es importante empezar por algo, en ambos casos creceras profesionalmente.',
                  textAlign: TextAlign.center,
                  style: secondaryText,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TypeEmployeSelect(
                title: 'Experiencia laboral',
                isSelected: _.myfirstEmployee,
                path: 'assets/myfirstE.svg',
                onTap: () => _.setMyfirstEmployee(true),
              ),
              SizedBox(
                height: 10,
              ),
              TypeEmployeSelect(
                title: 'Cambiar de trabajo',
                isSelected: !_.myfirstEmployee,
                path: 'assets/changejob.svg',
                onTap: () => _.setMyfirstEmployee(false),
              ),
            ],
          ),
        );
      },
    );
  }
}
