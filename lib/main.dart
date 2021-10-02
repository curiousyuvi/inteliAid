import 'package:flutter/material.dart';
import 'package:intel_aid/constants.dart';
import 'package:intel_aid/screens/answerChat.dart';
import 'package:intel_aid/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return Home();
        },
        "/answerChat": (context) {
          return AnswerChat();
        }
      },
      theme: ThemeData(
          primaryColor: primaryGreen,
          accentColor: primaryGreen,
          scaffoldBackgroundColor: creamWhite,
          textTheme: TextTheme(
              headline1: TextStyle(
                color: Colors.white,
                fontFamily: "Josefin",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              headline2: TextStyle(
                  color: Colors.white,
                  fontFamily: "Josefin",
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
    );
  }
}
