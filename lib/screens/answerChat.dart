import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inteli_aid/components/chatsListView.dart';
import 'package:inteli_aid/components/roundButton.dart';
import 'package:inteli_aid/constants.dart';

class AnswerChat extends StatefulWidget {
  @override
  _AnswerChatState createState() => _AnswerChatState();
}

class _AnswerChatState extends State<AnswerChat> {
  static TextEditingController? editingController = TextEditingController();
  bool isWriting = false;
  List chats = [
    {
      "body": "Hey ask me a health question?",
      "source": "app",
      "hasMultiple": false,
      "questions": []
    }
  ];
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
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ChatsListView(
                    chatsList: chats,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: darkBlue1, width: 5),
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: editingController,
                                  onChanged: (val) {
                                    if (val.length != 0) {
                                      setState(() {
                                        isWriting = true;
                                      });
                                    } else {
                                      setState(() {
                                        isWriting = false;
                                      });
                                    }
                                  },
                                  maxLines: 1,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      isWriting
                          ? RoundButton(
                              icon: FontAwesomeIcons.solidPaperPlane,
                              onPressed: () {
                                setState(() {
                                  chats.add({
                                    "body": editingController?.text,
                                    "source": "user"
                                  });
                                  editingController?.text = '';
                                });
                              },
                            )
                          : RoundButton(
                              icon: FontAwesomeIcons.microphone,
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
