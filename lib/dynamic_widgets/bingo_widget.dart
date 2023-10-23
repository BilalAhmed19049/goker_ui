import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BingoWidget extends StatelessWidget {
  BingoWidget({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [
            Color(0xFF8B7831),
            Color(0xFFC0A343),
            Color(0xFFE5D177),
            Color(0xFF947F30),
          ],
          stops: [0.25, 0.5, 0.75, 1.0], // Adjust stops as needed
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

        ),
      ),
      child: Center(
        child: Text(text,style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 32,


        )),
      ),
    );
  }
}
