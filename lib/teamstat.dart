import 'dart:ui';

import 'package:flutter/material.dart';

Widget teamStat(String team, String logoUrl, String teamName) {
  return Expanded(
    child: Column(
      children: [
        Text(team,
            style: TextStyle(
              fontSize: 20.0,
            )),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Image,
        )
      ],
    ),
  );
}
