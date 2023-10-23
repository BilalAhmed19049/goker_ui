import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenButtonWidget extends StatelessWidget {
  HomeScreenButtonWidget({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration:
          const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [    Color(0xFF8B7831),
              Color(0xFFC0A343),
              Color(0xFFE5D177),
              Color(0xFF947F30),]

          )),
      child: Center(
        child: Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
      ),

    );
  }
}
