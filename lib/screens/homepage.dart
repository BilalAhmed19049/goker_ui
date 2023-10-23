
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goker/dynamic_widgets/home_screen_button_widget.dart';
import 'package:goker/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/homebackground.png',
                fit: BoxFit.contain,
              ),
            ),

            //ball#1
            Positioned(
              top: 128,
              left: 104,
              width: 156,
              height: 155,
              child: BlurContainer('assets/Ball_1.png'),
            ),

            //ball#2
            Positioned(
              top: 389,
              left: 273,
              width: 108,
              height: 108,
              child: BlurContainer('assets/Ball_18.png'),
            ),
            Positioned(
              top: 575,
              left: 264,
              width: 127,
              height: 127,
              child: BlurContainer('assets/Ball_52.png'),
            ),
            Positioned(
              top: 702,
              left: 104,
              width: 96,
              height: 96,
              child: BlurContainer('assets/Ball_36.png'),
            ),

            Positioned(
                child: Container(
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo 1.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.gametype);
                    },
                      child: HomeScreenButtonWidget(
                    text: 'Goker Draw',
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap:() {
                      Navigator.pushNamed(context, Routes.gamescreen);
                    },
                    child: HomeScreenButtonWidget(
                      text: 'External Draw',
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget BlurContainer(String imagePath) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
        child: Text(''),
      ),
    );
  }
}
