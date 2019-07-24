import 'dart:io';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Explicit
  double myWidth = 200.0;
// Method
  Widget showAppName() {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Text(
        'Mark.Shopping',
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.red[700],
          fontWeight: FontWeight.bold,
          fontFamily: 'Butcherman',
        ),
      ),
    );
  }

  Widget signInButton() {
    return Container(
      child: FlatButton(
        color: Colors.green[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget showButton() {
    return Container(
      width: 250.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: signInButton(),
          ),
          Expanded(
            child: signUpButton(),
          ),
        ],
      ),
    );
  }

  Widget signUpButton() {
    return Container(
      child: OutlineButton(
        borderSide: BorderSide(
          color: Colors.green[700],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text('Sign Up'),
        onPressed: () {},
      ),
    );
  }

  Widget showLogo() {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      width: 120.0,
      height: 120.0,
      child: Image.asset('images/LOGO.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Colors.blue[200],
            Colors.black,
          ], radius: 1.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            showLogo(),
            showAppName(),
            showButton(),
          ],
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
