import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Views/Postulate/MyFirstEmployePage.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/BottonSecundary.dart';
import 'package:mimango/Widgets/ButtonPrimary.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/anim/delayed_reveal.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:mimango/controllers/CurriculumController.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'DataExtra.dart';
import 'SelectJobs.dart';
import 'DIsponibilityPage.dart';

class AboutMimango extends StatefulWidget {
  const AboutMimango({Key? key}) : super(key: key);

  @override
  _AboutMimangoState createState() => _AboutMimangoState();
}

class _AboutMimangoState extends State<AboutMimango> {
  final controller = PageController(
    viewportFraction: 1.0,
    keepPage: true,
    initialPage: 0,
  );

  var cv = Get.find<CurriculumController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cv.getJobsTypes();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    cv.setAvilableNext(true);
    cv.disposeForm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CurriculumController>(builder: (_) {
        return Container(
          child: Stack(
            children: [
              BackGradient(),
              SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                            iconSize: 10,
                            icon: SvgPicture.asset(
                              'assets/backicon.svg',
                              height: 20,
                              width: 34,
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                      DelayedReveal(
                        delay: Duration(milliseconds: 100),
                        child: CardBlured(
                          child: Text(
                            '¡Bienvenido al proceso de entrevista de mimango!',
                            textAlign: TextAlign.center,
                            style: subTitleText,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Expanded(
                        child: PageView(
                          controller: controller,
                          physics: NeverScrollableScrollPhysics(),
                          padEnds: false,
                          children: [
                            MyFirstEmployePage(),
                            SelectJobsPage(),
                            DisponibilityPage(),
                            DataExtraPage(),
                          ],
                        ),
                      ),
                      Container(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 4,
                          effect: JumpingDotEffect(
                            dotHeight: 10,
                            dotWidth: 10,
                            jumpScale: 1.5,
                            verticalOffset: 15,
                            activeDotColor: pinkfacebook,
                            dotColor: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      _.avilableNext
                          ? _.avilableSend
                              ? Column(
                                  children: [
                                    Container(
                                      child: ButtonPrimary(
                                        title: 'Enviar',
                                        onFunction: () {
                                          controller.nextPage(
                                            duration:
                                                Duration(milliseconds: 310),
                                            curve: Curves.easeIn,
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      child: ButtonSecundary(
                                        title: 'Cancelar',
                                        onFunction: () {
                                          Get.back();
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                )
                              : Column(
                                  children: [
                                    Container(
                                      child: ButtonPrimary(
                                        title: 'Siguiente',
                                        onFunction: () {
                                          if (controller.page == 2) {
                                            _.setAvilableNext(false);

                                            _.setAvilableSend();
                                            controller.nextPage(
                                              duration:
                                                  Duration(milliseconds: 310),
                                              curve: Curves.easeIn,
                                            );
                                          } else {
                                            controller.nextPage(
                                              duration:
                                                  Duration(milliseconds: 310),
                                              curve: Curves.easeIn,
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      child: ButtonSecundary(
                                        title: 'Volver',
                                        onFunction: () {
                                          controller.previousPage(
                                            duration:
                                                Duration(milliseconds: 310),
                                            curve: Curves.easeIn,
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
