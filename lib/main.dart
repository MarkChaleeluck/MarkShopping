import 'package:flutter/material.dart';
import 'package:mark_shopping/screens/home.dart';
import 'package:flutter/services.dart';
import 'package:mark_shopping/screens/sign_in.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}
