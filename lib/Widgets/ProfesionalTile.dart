import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimango/Models/CurriculumModel.dart';
import 'package:mimango/controllers/CurriculumController.dart';

// ignore: must_be_immutable
class ProfesionalTile extends StatelessWidget {
  CurriculumModel? model;

  ProfesionalTile({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CurriculumController>(
      builder: (_) {
        return GestureDetector(
          onTap: () {
            _.selectCurriculum(model!);
          },
          child: Container(
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.all(20),
            width: 180,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              // alignment: Alignment(-0.0, 4.0),
              children: [
                Column(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Hero(
                          tag: '${model!.id}',
                          child: Image.network(
                            model!.photo!,
                            height: 120,
                            // width: Get.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Container(
                  child: Container(
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          model!.firstname!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        // Divider(),
                        Text(
                          model!.typeJob!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
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
