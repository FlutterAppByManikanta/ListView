import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalListViewDemo extends StatefulWidget {
  const HorizontalListViewDemo({super.key});

  @override
  State<HorizontalListViewDemo> createState() => _HorizontalListViewDemoState();
}

class _HorizontalListViewDemoState extends State<HorizontalListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Horizontal ListView"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        shrinkWrap: true,
        children: [

          Container(
            height: 150,
            width: 160,
          color: Colors.red,
          child: Center(child: Text("A")),),

          Container(
            height: 150,
            width: 160,
            color: Colors.blueAccent,
            child: Center(child: Text("B")),),


          Container(
            height: 150,
            width: 160,
            color: Colors.greenAccent,
            child: Center(child: Text("C")),),


        ],
      ),
    );

  }
}
