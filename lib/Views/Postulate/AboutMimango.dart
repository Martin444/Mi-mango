import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Views/Postulate/MyFirstEmployePage.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/BottonSecundary.dart';
import 'package:mimango/Widgets/ButtonPrimary.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/LoadingWidget.dart';
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
  bool? isLoading = false;
  final controller = PageController(
    viewportFraction: 1.0,
    keepPage: true,
    initialPage: 0,
  );

  var cv = Get.find<CurriculumController>();

  @override
  void initState() {
    super.initState();
    cv.getJobsTypes();
  }

  @override
  void dispose() {
    cv.disposeForm();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CurriculumController>(builder: (_) {
        return Container(
          child: Stack(
            children: [
              BackGradient(),
              isLoading! == true
                  ? LoadingWidget()
                  : _.sendSucces
                      ? Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DelayedReveal(
                                delay: Duration(milliseconds: 100),
                                child: Text(
                                  '¡Tu información se envió correctamente!',
                                  textAlign: TextAlign.center,
                                  style: primatyText,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              DelayedReveal(
                                delay: Duration(milliseconds: 200),
                                child: Text(
                                  'Tu perfil se actualizará en las siguentes 24 hs.',
                                  textAlign: TextAlign.center,
                                  style: subTitleText,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              DelayedReveal(
                                delay: Duration(milliseconds: 300),
                                child: Container(
                                  child: SvgPicture.asset(
                                    'assets/uploadcv.svg',
                                    height: 200,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              DelayedReveal(
                                delay: Duration(milliseconds: 400),
                                child: ButtonPrimary(
                                  title: 'Entendido',
                                  onFunction: () {
                                    Get.back();
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      : SafeArea(
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
                                        ? DelayedReveal(
                                            delay: Duration(milliseconds: 100),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: ButtonPrimary(
                                                    title: 'Enviar',
                                                    onFunction: () {
                                                      setState(() {
                                                        isLoading = true;
                                                      });
                                                      _
                                                          .postNewCurriculum()
                                                          .then((value) => {
                                                                setState(() {
                                                                  isLoading =
                                                                      false;
                                                                }),
                                                              });
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
                                            ),
                                          )
                                        : DelayedReveal(
                                            delay: Duration(milliseconds: 100),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: ButtonPrimary(
                                                    title: 'Siguiente',
                                                    onFunction: () {
                                                      if (controller.page ==
                                                          1) {
                                                        if (_.typeJobSelected ==
                                                            null) {
                                                          Get.showSnackbar(
                                                              GetBar(
                                                            duration: Duration(
                                                                seconds: 2),
                                                            snackPosition:
                                                                SnackPosition
                                                                    .TOP,
                                                            message:
                                                                'Selecciona una opción',
                                                            backgroundColor:
                                                                Colors.red,
                                                          ));
                                                        } else {
                                                          controller.nextPage(
                                                            duration: Duration(
                                                                milliseconds:
                                                                    310),
                                                            curve:
                                                                Curves.easeIn,
                                                          );
                                                        }
                                                      } else {
                                                        if (controller.page ==
                                                            2) {
                                                          _.setAvilableNext(
                                                              false);

                                                          _.setAvilableSend();
                                                          controller.nextPage(
                                                            duration: Duration(
                                                                milliseconds:
                                                                    310),
                                                            curve:
                                                                Curves.easeIn,
                                                          );
                                                        } else {
                                                          controller.nextPage(
                                                            duration: Duration(
                                                                milliseconds:
                                                                    310),
                                                            curve:
                                                                Curves.easeIn,
                                                          );
                                                        }
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
                                                        duration: Duration(
                                                            milliseconds: 310),
                                                        curve: Curves.easeIn,
                                                      );
                                                    },
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                              ],
                                            ),
                                          )
                                    : Column(
                                        children: [
                                          Container(
                                            child: DelayedReveal(
                                              delay:
                                                  Duration(milliseconds: 100),
                                              child: Text(
                                                'Por favor completa todos los campos con (*)',
                                                textAlign: TextAlign.center,
                                                style: subTitleText,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                        ],
                                      ),
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
