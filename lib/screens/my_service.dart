import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mark_shopping/screens/home.dart';

class Myservice extends StatefulWidget {
  @override
  _MyserviceState createState() => _MyserviceState();
}

class _MyserviceState extends State<Myservice> {
  // Explicit
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String displayNameString = '';
  // Method
  @override
  void initState() {
    super.initState();
    findDisplayName();
  }

  Future<void> findDisplayName() async {
    FirebaseUser firebaseUser = await firebaseAuth.currentUser();
    setState(() {
      displayNameString = firebaseUser.displayName;
    });
    print('Name = $displayNameString');
  }

  Widget mydrawerMenu() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          headDrawer(),
          mySignOut(),
        ],
      ),
    );
  }

  Widget headDrawer() {
    return DrawerHeader(
      decoration: BoxDecoration(
          gradient: RadialGradient(
        colors: [Colors.grey, Colors.grey],
        center: Alignment.topLeft,
        radius: 1.5,
      )),
      child: Column(
        children: <Widget>[
          showLogo(),
          showTopTitle(),
          showBottonTitle(),
        ],
      ),
    );
  }

  Widget mySignOut() {
    return ListTile(
      leading: Icon(
        Icons.exit_to_app,
      ),
      title: Text('SignOut'),
      onTap: () {
        processSignOut();

      },
    );
  }
  Future<void> processSignOut ()async{

await firebaseAuth.signOut().then((response){
  var homeRoute = MaterialPageRoute(builder: (BuildContext context) => Home());
  Navigator.of(context).pushAndRemoveUntil(homeRoute,(Route<dynamic> route) => false);
});
  }

  Widget showLogo() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 80.0,
      child: Image.asset('images/LOGO.png'),
    );
  }

  Widget showTitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        showTopTitle(),
        showBottonTitle(),
      ],
    );
  }

  Widget showTopTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text('My Service'),
    );
  }

  Widget showBottonTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Login by $displayNameString',
        style: TextStyle(
          fontSize: 14.0,
          fontStyle: FontStyle.italic,
          color: Colors.lightBlue,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: showTitle(),
      ),
      body: Text('body'),
      drawer: mydrawerMenu(),
    );
  }
}
