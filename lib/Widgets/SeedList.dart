import 'package:flutter/material.dart';
import 'package:mimango/Widgets/conts.dart';

import 'SeedTile.dart';

class SeedList extends StatelessWidget {
  const SeedList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Semillas de información',
            style: subTitleText,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              SeedTile(),
            ],
          ),
        ],
      ),
    );
  }
}
