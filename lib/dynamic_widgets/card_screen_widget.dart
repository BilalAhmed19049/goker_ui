import 'package:flutter/material.dart';
import 'package:goker/dynamic_widgets/card_screen_button_widget.dart';

class CardScreenWidget extends StatefulWidget {
  const CardScreenWidget({
    super.key,
    required this.text,
    required this.imagePath,
    required this.isImageOnLeft,
    required this.isBlack,
  });

  final String text;
  final String imagePath;
  final bool isImageOnLeft;
  final bool isBlack;

  @override
  State<CardScreenWidget> createState() => _CardScreenWidgetState();
}

class _CardScreenWidgetState extends State<CardScreenWidget> {
  //final bool imageFirst = true; // Set to true for image first, false for text first
  var radius = 10.0;
  bool isDropdownVisible = false;

  void toggleDropdownVisibility() {
    setState(() {
      isDropdownVisible = !isDropdownVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    var blackGradient = const LinearGradient(
      colors: [Color(0xFF121315), Color(0xFF3E3E3E), Color(0xFF121315)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    var redGradient = const LinearGradient(
      colors: [
        Color(0xFF6A060E),
        Color(0xFFD2000C),
        Color(0xFF6A060E),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
    return GestureDetector(
      onTap: () {
        toggleDropdownVisibility();
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFE5D177)),
              borderRadius: BorderRadius.circular(radius),
            ),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.isImageOnLeft)
                    buildImageContainer()
                  else
                    buildTextContainer(),
                  if (widget.isImageOnLeft)
                    buildTextContainer()
                  else
                    buildImageContainer(),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: isDropdownVisible ? 100 : 0,
            child: Container(
                child: Column(
              children: [
                Row(
                  children: [
                    CardScreenButtonWidget(
                      text: 'A',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: 'K',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: 'Q',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: 'J',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: '10',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: '9',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: '8',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardScreenButtonWidget(
                      text: '7',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: '6',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: '5',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: '4',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: '3',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                    CardScreenButtonWidget(
                      text: '2',
                      gradient: widget.isBlack ? blackGradient : redGradient,
                    ),
                  ],
                )
              ],
            )),
          ),
        ],
      ),
    );
  }

  Widget buildImageContainer() {
    LinearGradient gradient = widget.isImageOnLeft
        ? const LinearGradient(
            colors: [Color(0xFF121315), Color(0xFF3E3E3E), Color(0xFF121315)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        : const LinearGradient(
            colors: [
              Color(0xFF6A060E),
              Color(0xFFD2000C),
              Color(0xFF6A060E),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          );

    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.only(
          topLeft: widget.isImageOnLeft ? Radius.circular(radius) : Radius.zero,
          bottomLeft:
              widget.isImageOnLeft ? Radius.circular(radius) : Radius.zero,
          topRight:
              widget.isImageOnLeft ? Radius.zero : Radius.circular(radius),
          bottomRight:
              widget.isImageOnLeft ? Radius.zero : Radius.circular(radius),
        ),
      ),
      child: Center(
        child: Container(
            height: 50, width: 50, child: Image.asset(widget.imagePath)),
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
            bottomLeft:
                widget.isImageOnLeft ? Radius.zero : Radius.circular(radius),
            topLeft:
                widget.isImageOnLeft ? Radius.zero : Radius.circular(radius),
            topRight:
                widget.isImageOnLeft ? Radius.circular(radius) : Radius.zero,
            bottomRight:
                widget.isImageOnLeft ? Radius.circular(radius) : Radius.zero,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
