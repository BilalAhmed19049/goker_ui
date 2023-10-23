import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreenButtonWidget extends StatefulWidget {
  CardScreenButtonWidget({required this.text,required this.gradient});
  final String text;
final Gradient gradient;


  @override
  State<CardScreenButtonWidget> createState() => _CardScreenButtonWidget();
}

class _CardScreenButtonWidget extends State<CardScreenButtonWidget> {

  @override

  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(3),
      height: 42,
      width: 42,
      decoration:   BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient:widget.gradient,
      ),
      child: Center(
        child: Text(widget.text,style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 26,

        )),
      ),
      
    );
  }
}
