import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mimango/Widgets/conts.dart';

class TypeEmployeSelect extends StatelessWidget {
  bool isSelected = false;
  String title;
  String path;
  VoidCallback onTap;
  TypeEmployeSelect({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.onTap,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            curve: Curves.bounceInOut,
            bottom: isSelected ? 35 : 150,
            right: 10,
            child: Container(
              height: 100,
              width: Get.width - 60,
              decoration: BoxDecoration(
                gradient: isSelected
                    ? myGradient
                    : LinearGradient(colors: [
                        Colors.transparent,
                        Colors.transparent,
                      ]),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: isSelected ? subTitleTextWhite : subTitleText,
                  ),
                ),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 1000),
                  child: SvgPicture.asset(
                    path,
                    height: isSelected ? 101 : 100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
