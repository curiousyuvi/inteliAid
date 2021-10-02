import 'package:flutter/material.dart';
import 'package:inteli_aid/components/mainAppBar.dart';

import '../components/bigButton.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MainAppBar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [BigButton()],
          ),
        ),
      ),
    );
  }
}
