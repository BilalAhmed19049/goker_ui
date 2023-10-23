
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goker/dynamic_widgets/blur_image.dart';
import 'package:goker/dynamic_widgets/card_screen_widget.dart';
import 'package:goker/dynamic_widgets/dynamic_widget.dart';


class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                       // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                              child: Image.asset('assets/Arrow - Left.png')),
                        ),
                         SizedBox(
                           width: 32,
                         ),
                        Container(
                          width: 194,
                          height: 64,
                          child: Image.asset(
                            'assets/logo 1.png',
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: Text(
                        'Select the number of your cards',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),


                    const SizedBox(
                      height: 20,
                    ),

                    //First Tile
                    const CardScreenWidget(
                      text: 'SPADES',
                      imagePath: 'assets/spades.png',
                      isImageOnLeft: true,
                      isBlack: true,
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    //Second tile
                    Container(

                      child: CardScreenWidget(
                        text: 'HEARTS',
                        imagePath: 'assets/heart.png',
                        isImageOnLeft: false,
                        isBlack: false,
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                //Third tile
                    const CardScreenWidget(
                      text: 'CLUBS',
                      imagePath: 'assets/clubs.png',
                      isImageOnLeft:true,
                      isBlack: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //Fourth tile
                    const CardScreenWidget(
                      text: 'DIAMONDS',
                      imagePath: 'assets/card-game.png',
                      isImageOnLeft: false,
                      isBlack: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

