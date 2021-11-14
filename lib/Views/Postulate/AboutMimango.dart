import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/BackgroundScreen.dart';
import 'package:mimango/Widgets/CardBlured.dart';
import 'package:mimango/Widgets/anim/delayed_reveal.dart';
import 'package:mimango/Widgets/conts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutMimango extends StatefulWidget {
  const AboutMimango({Key? key}) : super(key: key);

  @override
  _AboutMimangoState createState() => _AboutMimangoState();
}

class _AboutMimangoState extends State<AboutMimango> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Center(
                  child: Text(
                    "Page $index",
                    style: TextStyle(color: Colors.indigo),
                  ),
                ),
              ),
            ));
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            BackGradient(),
            SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
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
                    SizedBox(
                      height: 240,
                      child: PageView.builder(
                        controller: controller,
                        // itemCount: pages.length,
                        itemBuilder: (_, index) {
                          return pages[index % pages.length];
                        },
                      ),
                    ),
                    Container(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: pages.length,
                        effect: JumpingDotEffect(
                          dotHeight: 16,
                          dotWidth: 16,
                          jumpScale: .7,
                          verticalOffset: 15,
                          activeDotColor: pinkfacebook,
                          dotColor: Colors.grey.withOpacity(0.4),
                        ),
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
  }
}
