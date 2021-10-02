import 'package:flutter/material.dart';
import 'package:inteli_aid/constants.dart';
import 'package:inteli_aid/screens/answerChat.dart';
import 'package:inteli_aid/screens/home.dart';

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
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            headline2: TextStyle(
                color: Colors.white,
                fontFamily: "Josefin",
                fontSize: 23,
                fontWeight: FontWeight.bold),
            bodyText1: TextStyle(
                color: Colors.black,
                fontFamily: "Josefin",
                fontSize: 20,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
