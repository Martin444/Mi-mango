import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/controllers/CurriculumController.dart';

import 'DataPersonalTile.dart';

class DataPersonal extends StatelessWidget {
  const DataPersonal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CurriculumController>(
      builder: (_) {
        return CardBlured(
          child: Column(
            children: [
              !_.curriculumSelected!.haveSchoolComplete!
                  ? Container()
                  : _.curriculumSelected!.haveSuperEducation!
                      ? DataPersonalTIle(
                          title: 'Nivel',
                          path: 'assets/academic.svg',
                          data: 'Terciario/Universidad',
                        )
                      : DataPersonalTIle(
                          path: 'assets/academic.svg',
                          title: 'Nivel',
                          data: 'Secundario',
                        ),
              DataPersonalTIle(
                path: 'assets/mail.svg',
                title: 'Email',
                data: '${_.curriculumSelected!.email}',
              ),
              DataPersonalTIle(
                path: 'assets/location.svg',
                title: 'Dirección',
                data: '${_.curriculumSelected!.address}',
              ),
              DataPersonalTIle(
                path: 'assets/phone.svg',
                title: 'Teléfono',
                data: '${_.curriculumSelected!.phone}',
              ),
              DataPersonalTIle(
                path: 'assets/identification.svg',
                title: 'DNI',
                data: '${_.curriculumSelected!.dniNumber}',
              ),
            ],
          ),
        );
      },
    );
  }
}
