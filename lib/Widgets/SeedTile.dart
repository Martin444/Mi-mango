import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mimango/Widgets/conts.dart';

class SeedTile extends StatelessWidget {
  const SeedTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://resizer.glanacion.com/resizer/eM66zvGDU7KxKd5IqP9hDoIvFUo=/768x0/filters:quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/DQGYOMTQJFFSZHEVZU72KIAOCM.jpg'),
          fit: BoxFit.cover,
        ),
        // color: Colors.purple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(10),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Text(
                  '¿Qué es el BornOut y como superarlo?',
                  textAlign: TextAlign.center,
                  style: subTitleTextWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
