import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionChoice extends StatelessWidget {
  String question;

  QuestionChoice({this.question = 'I have red pubes?'});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 3,
                )
              ]),
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          child: Text('I have red pubes?'),
        ),
      ),
    );
  }
}
