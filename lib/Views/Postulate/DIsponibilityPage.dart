import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/CustomSwitcher.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/CurriculumController.dart';

class DisponibilityPage extends StatefulWidget {
  const DisponibilityPage({Key? key}) : super(key: key);

  @override
  _DisponibilityPageState createState() => _DisponibilityPageState();
}

class _DisponibilityPageState extends State<DisponibilityPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CurriculumController>(
      builder: (_) {
        return Container(
          child: CardBlured(
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Disponibilidad',
                    textAlign: TextAlign.center,
                    style: subTitleText,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    'Estos datos se usan para brindarte oportunidades más personalizadas.',
                    textAlign: TextAlign.center,
                    style: secondaryText,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tengo uno o más hijos/as',
                            style: secondaryText,
                          ),
                          CustomSwitch(
                            value: _.haveChildren,
                            onChanged: (value) {
                              _.setHaveChildren(value);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tengo vehiculo',
                            style: secondaryText,
                          ),
                          CustomSwitch(
                            value: _.movility,
                            onChanged: (value) {
                              _.setHaveMovility(value);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Busco trabajos...',
                            style: subTitleText,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'De medio tiempo',
                                style: secondaryText,
                              ),
                              CustomSwitch(
                                value: !_.completeTime,
                                onChanged: (value) {
                                  _.setTimeDisponibility(false);
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'De tiempo completo',
                                style: secondaryText,
                              ),
                              CustomSwitch(
                                value: _.completeTime,
                                onChanged: (value) {
                                  _.setTimeDisponibility(true);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
