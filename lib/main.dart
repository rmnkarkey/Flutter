import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello_world/splash.dart';
import 'base.dart';
import 'apis.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  
  String listOfData;
  List<String> listss = List();
  Posts p = Posts();
  var data;
  var id;
  var body;
  var title;

  Future<String> datas(){
    // data = p.getData();
    // print(data;
    // return data;
    // print(p.details);
    // p.getData();
    data = p.details;
    var result = json.decode(data);
    print(result['id']);
    id = result['id'];
    title = result['title'];
    body = result['body'];
    
    // print(data);
    // return data;
  }

void getApiData(){
 
  setState(() {
    listOfData = data;
  });
}
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      drawer: DrawerSub(context),
      appBar: AppBar(
           title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'ID:\n $id \n\n Title:\n $title \n\n Body:\n$body'
                ,
              style: TextStyle(
              color:Colors.black,
              )
            ),
            RaisedButton(
              onPressed: datas,
            ),
          ],
        ),
      
      ),
    );
  }
}
