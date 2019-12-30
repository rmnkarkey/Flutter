import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage(title: "Home"))));
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/marvel.jpg'),
      ),
    );
  }
}
