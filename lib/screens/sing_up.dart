import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // explicit
  double myPadding = 20.0;

  // Method
  Widget showHead() {
    return Container(
      padding: EdgeInsets.only(left: myPadding),
      alignment: Alignment.centerLeft,
      child: Text(
        'Register',
        style: TextStyle(
          fontSize: 48.0,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlue,
        ),
      ),
    );
  }

  Widget nameText() {
    return Container(
      padding: EdgeInsets.only(left: myPadding, right: myPadding),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Name :',
            icon: Icon(
              Icons.supervisor_account,
              size: 36.0,
            )),
      ),
    );
  }

  Widget emailText() {
    return Container(
      padding: EdgeInsets.only(left: myPadding, right: myPadding),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email :',
          icon: Icon(
            Icons.email,
            size: 36.0,
          ),
        ),
      ),
    );
  }

  Widget passwordText() {
    return Container(
      padding: EdgeInsets.only(left: myPadding, right: myPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Password :',
          icon: Icon(
            Icons.lock,
            size: 36.0,
          ),
        ),
      ),
    );
  }

  Widget uploadButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),onPressed: (){},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Sign Up'),
        actions: <Widget>[uploadButton()],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          showHead(),
          nameText(),
          emailText(),
          passwordText(),
        ],
      ),
    );
  }
}
