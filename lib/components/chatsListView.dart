import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_3.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_4.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inteli_aid/components/questionChoice.dart';
import 'package:inteli_aid/components/receivedChat.dart';
import 'package:inteli_aid/components/sendChat.dart';
import 'package:inteli_aid/constants.dart';

class ChatsListView extends StatefulWidget {
  List chatsList;
  ChatsListView({this.chatsList = const []});
  @override
  _ChatsListViewState createState() =>
      _ChatsListViewState(chatsList: chatsList);
}

class _ChatsListViewState extends State<ChatsListView> {
  List chatsList;
  List<Widget> chatWidgets = [];
  ScrollController scrollController = ScrollController();

  prepareChats() {
    chatWidgets = [];
    for (var chat in chatsList) {
      if (chat['source'] == "app") {
        chatWidgets.add(ReceivedChat(body: chat['body']));
        if (chat["hasMultiple"]) {
          for (var question in chat["questions"]) {
            chatWidgets.add(QuestionChoice(
              question: question,
            ));
          }
        }
      } else {
        chatWidgets.add(SendChat(
          body: chat['body'],
        ));
      }
    }

    final position = scrollController.position.maxScrollExtent;
    scrollController.jumpTo(position);
  }

  _ChatsListViewState({this.chatsList = const []});
  @override
  Widget build(BuildContext context) {
    prepareChats();
    return ListView(
      children: chatWidgets,
      controller: scrollController,
    );
  }
}
