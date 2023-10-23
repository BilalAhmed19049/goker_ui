import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goker/dynamic_widgets/bingo_widget.dart';
import 'package:goker/dynamic_widgets/blur_image.dart';
import 'package:goker/dynamic_widgets/bottom_bar_widget.dart';
import 'package:goker/dynamic_widgets/gridview_widget.dart';
import 'package:goker/dynamic_widgets/level_bar_widget.dart';



class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
 int? actualIndex;
bool isAnimationVisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
                child: BlurContainer(
              'assets/Onboarding (1).png',
            )),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.center,
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
                        width: 22,
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
                  LevelBarWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BingoWidget(text: 'B'),
                      BingoWidget(text: 'I'),
                      BingoWidget(text: 'N'),
                      BingoWidget(text: 'G'),
                      BingoWidget(text: 'O'),
                    ],
                  ),
                  Expanded(
                    child: MyGridView(imagePaths: imagePaths,),
                  ),

                ],
              ),

            ),

            // Positioned.fill(
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     decoration: const BoxDecoration(
            //       color: Colors.red,
            //     ),
            //     child: Center(
            //       child: Image.asset(imagePaths[actualIndex ??0]),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(onTap: handleDrawButton,),
    );
  }
void handleDrawButton(){
  Random random=Random();
  int randomIndex=random.nextInt(75)+1;
  setState(() {
 actualIndex=randomIndex-1;
    String coloredImagePath=getColoredImagePaths(15,5)[actualIndex!];
    imagePaths[actualIndex!]=coloredImagePath;
    isColored[actualIndex!]=true;
  });
}



  List<String> imagePaths = [];
  List<bool> isColored = [];
  List<String> coloredImagePaths = [];
  @override
  void initState() {
    super.initState();
    imagePaths = getFadedImagePaths(15, 5);// when app starts, initial list of faded images generated
    coloredImagePaths = getColoredImagePaths(15, 5);// when app starts, initial list of colored images
    isColored = List.generate(imagePaths.length, (index) => false); //bool list to keep track image is colored or faded set as false
  }

  // logic to get faded image paths as per grid view
  List<String> getFadedImagePaths(int rows, int cols) {
    List<String> paths = [];
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        int index = (j * rows) + i + 1;
        paths.add('${index}f.png');
      }
    }
    return paths;
  }


  //logic to get colored image paths as per grid view
  List<String> getColoredImagePaths(int rows, int cols) {
    List<String> paths = [];
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        int index = (j * rows) + i + 1;
        paths.add('${index}c.png');
      }
    }

    return paths;
  }
}
