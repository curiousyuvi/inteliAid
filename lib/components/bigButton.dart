import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inteli_aid/components/smallButton.dart';

import '../constants.dart';

class BigButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
          padding: EdgeInsets.all(25),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    spreadRadius: 5),
                BoxShadow(
                  color: darkBlue1,
                  offset: Offset(0, 5),
                ),
              ]),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.question,
                color: Colors.white,
                size: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Ask a medical question?',
                  style: Theme.of(context).textTheme.headline2),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallButton(
                    icon: FontAwesomeIcons.commentDots,
                    onPressed: () {
                      Navigator.pushNamed(context, "/answerChat");
                    },
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  SmallButton(
                    icon: FontAwesomeIcons.microphone,
                  ),
                ],
              )
            ],
          ))),
    );
  }
}
