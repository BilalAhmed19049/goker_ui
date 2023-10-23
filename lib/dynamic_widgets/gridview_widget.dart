import 'dart:math';

import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  final List<String> imagePaths;

  @override
  State<MyGridView> createState() => _MyGridViewState();

   MyGridView({super.key,
    required this.imagePaths,
  });
}

class _MyGridViewState extends State<MyGridView> {

  // building GridView builder
  Widget build(BuildContext context) {
    int rows = 15;
    int cols = 5;

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: cols,
        ),
        itemCount: rows * cols,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            'assets/images/${widget.imagePaths[index]}', //path to the image file, showing images in GridView as per their index
          );
        },
      ),
    );
  }

  // void handleImageTap(int index) {
  //   setState(() {
  //     if (isColored[index]) {
  //       // this check if the image of certain index which is pressed is colored then change this to faded image by getting the same index faded image from getFadedImagePaths
  //       imagePaths[index] = getFadedImagePaths(15, 5)[index];
  //     } else {
  //       // if image is not colored then make it colored by getting the same index colored image from getColoredImagePaths
  //       imagePaths[index] = getColoredImagePaths(15, 5)[index];
  //     }
  //
  //     isColored[index] = !isColored[
  //         index]; // toggle the values of image, so that after every build right format of colored and faded is shown
  //   });
  // }
}
