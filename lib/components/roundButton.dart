import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inteli_aid/constants.dart';

class RoundButton extends StatelessWidget {
  IconData icon;
  void Function()? onPressed;

  RoundButton({this.icon = FontAwesomeIcons.smile, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
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
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
