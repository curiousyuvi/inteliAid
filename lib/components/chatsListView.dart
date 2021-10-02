import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  _ChatsListViewState({this.chatsList = const []});
  @override
  Widget build(BuildContext context) {
    for (var chat in chatsList) {}

    return ListView(
      children: [
        Container(
          child: Row(
            children: [
              CircleAvatar(
                child: Icon(
                  FontAwesomeIcons.smile,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
