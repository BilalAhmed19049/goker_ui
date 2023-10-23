import 'package:flutter/material.dart';
import 'package:goker/routes.dart';
import 'package:goker/screens/card_screen.dart';
import 'package:goker/screens/game_screen.dart';
import 'package:goker/screens/game_type.dart';
import 'package:goker/screens/card_screen.dart';
import 'screens/homepage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    initialRoute: Routes.homescreen,
      routes: Routes.routes,
      //home:HomePage() ,
    );
  }
}

