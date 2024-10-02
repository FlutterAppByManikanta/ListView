import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListViewDemo extends StatefulWidget {
  const MyListViewDemo({super.key});

  @override
  State<MyListViewDemo> createState() => _MyListViewDemoState();
}

class _MyListViewDemoState extends State<MyListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("ListView"),),
      body: ListView(
        children: [

          ListTile(leading: Icon(Icons.person),
          title: Text("Person"),),

          ListTile(leading: Icon(Icons.camera),
            title: Text("Camera"),),

          ListTile(leading: Icon(Icons.lock),
            title: Text("Password"),),


        ],
      ),
    );
  }
}
