import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goker/routes.dart';
import 'package:goker/screens/card_screen.dart';
import 'package:goker/dynamic_widgets/gridview_widget.dart';

class BottomBar extends StatefulWidget {
   const BottomBar({super.key, required this.onTap});

   final Function() onTap;
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomAppBar(
        elevation: 0,
        color: Colors.brown,
        child: SizedBox(
          height: 90,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.cardscreen);
                  },
                  child: customGradientButton(
                    height: 41,
                    width: 106,
                    text: 'Validate',
                  ),
                ),
                InkWell(
                  onTap: widget.onTap,
                  child: customGradientButton(
                    height: 41,
                    width: 81,
                    text: 'Draw',
                  ),
                ),
                customButton(
                  height: 50,
                  width: 58,
                  text: 'B',
                  color: Color(0xFFE5D177),
                ),
                customButton(
                  height: 50,
                  width: 66,
                  text: '75',
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }




  Widget customGradientButton({
    required double height,
    required double width,
    required String text,
  }) {
    return Container(
      height: height,
      width: width,
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
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget customButton({
    required double height,
    required double width,
    required String text,
    required Color color,
  }) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: color, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
