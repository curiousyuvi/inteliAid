import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';

import '../constants.dart';

class SendChat extends StatelessWidget {
  String body;

  SendChat({this.body = 'Hello'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Expanded(
        child: ChatBubble(
          alignment: Alignment.centerRight,
          backGroundColor: darkBlue1,
          clipper: ChatBubbleClipper2(type: BubbleType.sendBubble),
          child: Text(
            body,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ),
    );
  }
}
