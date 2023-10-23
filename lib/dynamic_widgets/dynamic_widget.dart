import 'package:flutter/material.dart';

class DynamicUIWidget extends StatelessWidget {
  DynamicUIWidget(
      {required this.text,
      required this.imagePath,
      required this.isImageOnLeft});

  final String text;
  final String imagePath;

  //final bool imageFirst = true; // Set to true for image first, false for text first
  var radius = 10.0;
  late final bool isImageOnLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE5D177)),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isImageOnLeft) buildImageContainer() else buildTextContainer(),
            SizedBox(width: 5),
            if (isImageOnLeft) buildTextContainer() else buildImageContainer(),
          ],
        ),
      ),
    );
  }

  Widget buildImageContainer() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
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
          borderRadius: BorderRadius.only(
            topLeft: isImageOnLeft ? Radius.circular(radius) : Radius.zero,
            bottomLeft: isImageOnLeft ? Radius.circular(radius) : Radius.zero,
            topRight: isImageOnLeft ? Radius.zero : Radius.circular(radius),
            bottomRight: isImageOnLeft ? Radius.zero : Radius.circular(radius),
          ),
        ),
        child: Center(
          child:
              Container(height: 50, width: 50, child: Image.asset(imagePath)),
        ),
      ),
    );
  }

  Widget buildTextContainer() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: isImageOnLeft ? Radius.zero : Radius.circular(radius),
            topLeft: isImageOnLeft ? Radius.zero : Radius.circular(radius),
            topRight: isImageOnLeft ? Radius.circular(radius): Radius.zero,
            bottomRight: isImageOnLeft ? Radius.circular(radius) : Radius.zero,

          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
