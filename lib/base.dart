import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/flag.dart';

import 'main.dart';

class Base extends StatefulWidget{
  @override
  BaseClass createState() => BaseClass();
}

class BaseClass extends State<Base>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Marvel")),
      drawer: DrawerSub(context),
    );
  }
}

Widget DrawerSub(BuildContext context, {ListView child}){
  return Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text("Drawer"),
            decoration: BoxDecoration(
              color:Colors.red,
              image: DecorationImage(
              image: AssetImage("assets/marvel.jpg"),
                fit: BoxFit.cover
                ),
            ), 
             
            ),
            ListTile(
                title: Text('About Marvel',
                   style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  )
                  ),
                  trailing: Icon(Icons.business_center),
               onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage(title: "Marvel")),
                    );
             },
            ),
           ListTile(
               title: Text('Marvel Characters',
                   style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  )
                  ),
                  trailing: Icon(Icons.person),
               onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Flag()),
                    );
        },
            ),
          ],
        ),
      );
}