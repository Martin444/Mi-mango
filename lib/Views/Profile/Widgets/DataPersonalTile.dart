import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DataPersonalTIle extends StatelessWidget {
  String? path;
  String? title;
  String? data;

  DataPersonalTIle({
    Key? key,
    required this.path,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  path!,
                  color: Colors.black,
                ),
                Text(
                  ' $title:',
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Text(
              '$data',
              style: TextStyle(
                fontFamily: 'Sniglet',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
