import 'dart:io';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Explicit

// Method
  Widget showAppName() {
    return Text('Mark.Shopping');
  }

  Widget signInButton() {
    return RaisedButton(
      child: Text('Sign In'),
      onPressed: () {},
    );
  }

  Widget signOutButton() {
    return RaisedButton(
      child: Text('Sign Out'),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            signOutButton(),
            signInButton(),
            showAppName(),
          ],
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
