import 'package:animate_do/animate_do.dart';
import 'package:disenos/src/pages/instagram.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink, actions: <Widget>[
        IconButton(
          icon: FaIcon(FontAwesomeIcons.instagram),
          onPressed: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (BuildContext context) => InstagramPage()));
          },
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (BuildContext context) => BotonesPage()));
          },
        )
      ]),
      floatingActionButton: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play), onPressed: () {}),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.home, color: Colors.blue, size: 30),
            FadeInUp(
              child: Text('BIENVENIDO',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w200)),
            ),
          ],
        ),
      ),
    );
  }
}
