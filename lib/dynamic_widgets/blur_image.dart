import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget BlurContainer(String imagePath) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.transparent,
        image:
        DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill)),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
      child: Text(''),
    ),
  );
}
