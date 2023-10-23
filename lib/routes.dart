import 'package:flutter/cupertino.dart';
import 'package:goker/screens/card_screen.dart';
import 'package:goker/screens/game_screen.dart';
import 'package:goker/screens/game_type.dart';
import 'package:goker/screens/homepage.dart';

class Routes{
  static const String homescreen='/';
  static const String gametype='/2';
  static const String gamescreen='/3';
  static const String cardscreen='/4';



  static final Map<String, WidgetBuilder> routes={
    homescreen: (BuildContext context) =>HomePage(),
    gametype: (BuildContext context) => GameType(),
    gamescreen:  (BuildContext context) => GameScreen(),
    cardscreen:(BuildContext context) =>CardScreen(),

  };



}