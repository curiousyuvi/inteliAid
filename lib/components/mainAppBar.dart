import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(
                FontAwesomeIcons.heartbeat,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Text('InteliAid',
              textAlign: TextAlign.center,
              maxLines: 1,
              style: Theme.of(context).textTheme.headline1),
        ],
      ),
    );
  }
}
