import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goker/dynamic_widgets/blur_image.dart';
import 'package:goker/dynamic_widgets/dynamic_widget.dart';
import 'package:goker/routes.dart';

import 'package:goker/screens/game_type.dart';

class GameType extends StatelessWidget {
  const GameType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: BlurContainer(
                'assets/Onboarding (1).png',
              ),
            ),
            Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child:
                        InkWell(
                            onTap: (){Navigator.pop(context);},
                            child: Image.asset('assets/Arrow - Left.png')),
                  ),
                  Container(
                    width: 190,
                    height: 64,
                    child: Image.asset('assets/logo 1.png'),
                  ),

                  const SizedBox(
                    height: 70,
                  ),

                  //First Tile
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.gamescreen);
                    },
                    child: DynamicUIWidget(
                      text: 'Classic Draw',
                      imagePath: 'assets/bingo 1.png',
                      isImageOnLeft: true,
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  //Second tile
                  DynamicUIWidget(
                    text: 'Rapid Start',
                    imagePath: 'assets/spin-drum 1.png',
                    isImageOnLeft: false,
                  ),

                  const SizedBox(
                    height: 15,
                  ),
//Third tile
                  DynamicUIWidget(
                    text: 'Custom Levels',
                    imagePath: 'assets/bingo (1) 1.png',
                    isImageOnLeft: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  //Fourth tile
                  DynamicUIWidget(
                    text: 'Comming Soon',
                    imagePath: 'assets/quality 1.png',
                    isImageOnLeft: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
