import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base.dart';


class Flag extends StatefulWidget{
  @override
  AnotherFlag createState()=> new AnotherFlag();
}

class AnotherFlag extends State<Flag>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerSub(context),
      appBar: AppBar(title: Text("Marvel Characters")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          <Widget>[
          Text('This is second dart page'),
          ],
      )
      )
    );
  }
}