import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/CurriculumController.dart';

class SelectJobsPage extends StatefulWidget {
  const SelectJobsPage({Key? key}) : super(key: key);

  @override
  _SelectJobsPageState createState() => _SelectJobsPageState();
}

class _SelectJobsPageState extends State<SelectJobsPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CurriculumController>(
      builder: (_) {
        var tiles = <JobTileSelect>[];
        _.typeJobs.forEach((element) {
          tiles.add(JobTileSelect(
            job: element.title!,
            selected: _.typeJobSelected != null
                ? _.typeJobSelected!.id == element.id
                : false,
            onTap: () {
              print(element);
              _.selectMyJob(element);
            },
          ));
        });
        return Container(
          child: CardBlured(
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Selecciona uno de nuestros ${tiles.length} trabajos habilitados',
                    textAlign: TextAlign.center,
                    style: subTitleText,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    '¡Tranqui! Si algo sale mal puedes cambiar más adelante.',
                    textAlign: TextAlign.center,
                    style: secondaryText,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: tiles,
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

class JobTileSelect extends StatelessWidget {
  String job;
  bool selected;
  VoidCallback onTap;
  JobTileSelect({
    Key? key,
    required this.job,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        margin: EdgeInsets.only(
          bottom: 6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: selected
              ? myGradient
              : LinearGradient(colors: [
                  Colors.grey[100]!,
                  Colors.grey[100]!,
                ]),
        ),
        child: Row(
          children: [
            Text(
              job,
              style: selected ? subTitleTextWhite : subTitleText,
            ),
          ],
        ),
      ),
    );
  }
}
