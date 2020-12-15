import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:disenos/src/pages/welcom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstagramPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple, title: Text('MY IG')),
      backgroundColor: Colors.purple,
      body: Center(
        child: FadeIn(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            FaIcon(FontAwesomeIcons.instagram, size: 40),
            Text('@_yus00',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w200))
          ]),
        ),
      ),
    );
  }
}
