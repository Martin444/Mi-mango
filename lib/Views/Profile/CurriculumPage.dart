import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/CurriculumController.dart';

import 'Widgets/DataPersonalCard.dart';

class CurriculumPage extends StatefulWidget {
  const CurriculumPage({Key? key}) : super(key: key);

  @override
  _CurriculumPageState createState() => _CurriculumPageState();
}

class _CurriculumPageState extends State<CurriculumPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CurriculumController>(
      builder: (_) {
        return Scaffold(
          body: Stack(
            children: [
              BackGradient(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: SvgPicture.asset(
                              'assets/backicon.svg',
                              height: 23,
                            ),
                            color: Colors.black,
                          ),
                          Text(
                            'Curriculum vitae',
                            style: TextStyle(
                              fontFamily: 'Sniglet',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Hero(
                                  tag: _.curriculumSelected!.id!,
                                  child: Image.network(
                                    _.curriculumSelected!.photo!,
                                    height: 200,
                                    width: 140,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: CardBlured(
                                child: Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  runSpacing: 20,
                                  children: [
                                    ButtonOptions(
                                      path: 'assets/dcv.png',
                                      text: 'Descargar CV',
                                    ),
                                    ButtonOptions(
                                      path: 'assets/wpp.png',
                                      text: 'Whatsapp',
                                    ),
                                    ButtonOptions(
                                      path: 'assets/recomend.png',
                                      text: 'Recomendar',
                                    ),
                                    ButtonOptions(
                                      path: 'assets/deni.png',
                                      text: 'Denunciar',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        CardBlured(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  _.curriculumSelected!.firstname!,
                                  style: TextStyle(
                                    fontFamily: 'Sniglet',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '${_.curriculumSelected!.age} años',
                                  style: TextStyle(
                                    fontFamily: 'Sniglet',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                                thickness: 1,
                              ),
                              Container(
                                child: Text(
                                  '${_.curriculumSelected!.description}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      width: Get.width,
                      child: CardBlured(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Profesión:',
                              style: TextStyle(
                                fontFamily: 'Sniglet',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '${_.curriculumSelected!.typeJob}',
                              style: TextStyle(
                                fontFamily: 'Sniglet',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    _.curriculumSelected!.completeWorkday!
                        ? Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            width: Get.width,
                            child: CardBlured(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Disponibilidad:',
                                    style: TextStyle(
                                      fontFamily: 'Sniglet',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Tiempo completo',
                                    style: TextStyle(
                                      fontFamily: 'Sniglet',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            width: Get.width,
                            child: CardBlured(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Disponibilidad horaria:',
                                    style: TextStyle(
                                      fontFamily: 'Sniglet',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Medio tiempo',
                                    style: TextStyle(
                                      fontFamily: 'Sniglet',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                    SizedBox(height: 10),
                    _.curriculumSelected!.typeJob == 'Delivery'
                        ? _.curriculumSelected!.movility!
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                width: Get.width,
                                child: CardBlured(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Dispone de movilidad',
                                        style: TextStyle(
                                          fontFamily: 'Sniglet',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                width: Get.width,
                                child: CardBlured(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'No dispone de movilidad',
                                        style: TextStyle(
                                          fontFamily: 'Sniglet',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                        : Container(),
                    SizedBox(height: 0),
                    DataPersonal(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonOptions extends StatelessWidget {
  String? path;
  String? text;
  ButtonOptions({
    Key? key,
    required this.path,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          IconButton(
            iconSize: 40,
            color: Colors.white,
            icon: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    path!,
                    height: 60,
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
          Text(
            text!,
            style: TextStyle(
              fontFamily: 'Sniglet',
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
