import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inteli_aid/constants.dart';

class AnswerChat extends StatefulWidget {
  @override
  _AnswerChatState createState() => _AnswerChatState();
}

class _AnswerChatState extends State<AnswerChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  color: primaryGreen,
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 10,
                                  offset: Offset(0, 7)),
                              BoxShadow(color: darkBlue2, offset: Offset(0, 3))
                            ],
                            color: darkBlue1),
                        child: Icon(
                          FontAwesomeIcons.microphone,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
