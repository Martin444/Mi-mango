import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/CustomSwitcher.dart';
import 'package:mimango/Widgets/TextInput.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/CurriculumController.dart';

class DataExtraPage extends StatefulWidget {
  const DataExtraPage({Key? key}) : super(key: key);

  @override
  _DataExtraPageState createState() => _DataExtraPageState();
}

class _DataExtraPageState extends State<DataExtraPage> {
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode3 = FocusNode();
  FocusNode _focusNode4 = FocusNode();
  FocusNode _focusNode5 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CurriculumController>(
      builder: (_) {
        return Container(
          child: CardBlured(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Datos personales',
                      textAlign: TextAlign.center,
                      style: subTitleText,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      'Estos datos irán directo a tu Curriculumn',
                      textAlign: TextAlign.center,
                      style: secondaryText,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 0,
                        ),
                        TextInput(
                          labelText: 'Nombre y apellido (*)',
                          controller: _.nameController,
                          keyboardType: TextInputType.text,
                          onChanged: () {
                            _.setAvilableSend();
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextInput(
                          labelText: 'Dirección (*)',
                          controller: _.directionController,
                          keyboardType: TextInputType.streetAddress,
                          onChanged: () {
                            _.setAvilableSend();
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextInput(
                          labelText: 'Edad (*)',
                          controller: _.ageController,
                          keyboardType: TextInputType.number,
                          onChanged: () {
                            _.setAvilableSend();
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextInput(
                          labelText: 'Número de DNI (*)',
                          controller: _.dniNumberController,
                          keyboardType: TextInputType.number,
                          onChanged: () {
                            _.setAvilableSend();
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextInput(
                          labelText: 'Número de teléfono (*)',
                          controller: _.phoneNumberController,
                          keyboardType: TextInputType.phone,
                          onChanged: () {
                            _.setAvilableSend();
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tengo Whatsapp',
                              style: secondaryText,
                            ),
                            CustomSwitch(
                              value: _.haveWpp,
                              onChanged: (value) {
                                _.setHaveWpp(value);
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextInput(
                          labelText: 'Breve descripción de ti',
                          maxLines: 4,
                          controller: _.descriptionController,
                          onChanged: () {},
                          textInputAction: TextInputAction.done,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
