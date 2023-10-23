import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LevelBarWidget extends StatelessWidget {
  var radius = 25.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('LEVEL',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          Expanded(
            child: Container(
             // width: 195,
              height: 40,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(radius)),
                    ),
                  ),
                  Positioned(
                    left: 65,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text('1',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text('2',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 211,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text('3',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Container(
          //   height: 24, // Adjust the size of the circle
          //   width: 20, // Adjust the size of the circle
          //   decoration: const BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.white, // Adjust the color of the circle
          //   ),
          // ),
          // Container(
          //   width: 50, // Adjust the width of the level bar
          //   color: Colors.grey, // Adjust the color of the level bar
          // ),
          // Container(
          //   height: 19, // Adjust the size of the circle
          //   width: 20, // Adjust the size of the circle
          //   decoration: const BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.white, // Adjust the color of the circle
          //   ),
          // ),
          // Container(
          //   width: 50, // Adjust the width of the level bar
          //
          //   decoration: BoxDecoration(
          //       color: Colors.grey,
          //       borderRadius: BorderRadius.only(topRight: Radius.circular(radius),
          //     bottomRight: Radius.circular(radius))
          //   ),
          //   // Adjust the color of the level bar
          // ),
          // Container(
          //  height: 24, // Adjust the size of the circle
          //   width: 20, // Adjust the size of the circle
          //   decoration: const BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.white, // Adjust the color of the circle
          //   ),
          // ),

        //  ),
          const Text('35th',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize:18,
              )),

        ],
      ),
    );
  }
}
