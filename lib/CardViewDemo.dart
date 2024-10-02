import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class CardViewDemo extends StatefulWidget {
  const CardViewDemo({super.key});

  @override
  State<CardViewDemo> createState() => _CardViewDemoState();
}

class _CardViewDemoState extends State<CardViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("CardView Demo"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
        return  GestureDetector(
          onTap: () {
            print("Index Value is $index");
          },
          child: Card(
            color: Colors.lightGreen,
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Name : Manikanta VeeramReddy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),

                  SizedBox(height: 7,),


                  Text("PhoneNumber : 9900990099",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black),),

                  SizedBox(height: 7,),

                  Text("Email : eknowledgeehub@gmail.com",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black),),

                  SizedBox(height: 7,),

                  Text("WebSite : knowledgeehub.com",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black),),

                  SizedBox(height: 7,),


                ],
              ),
            ),

          ),
        );
      }),
    );
  }
}
