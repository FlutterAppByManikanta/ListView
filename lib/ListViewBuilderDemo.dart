import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_demo/Category.dart';

class ListViewBuilderDemo extends StatefulWidget {
  const ListViewBuilderDemo({super.key});

  @override
  State<ListViewBuilderDemo> createState() => _ListViewBuilderDemoState();
}

class _ListViewBuilderDemoState extends State<ListViewBuilderDemo> {
  @override
  Widget build(BuildContext context) {

    List<Category> categoryList = [

      Category("Fruits", "Rs.300/-",Colors.brown),
      Category("Vegetables", "Rs.400/-",Colors.greenAccent),
      Category("Snacks", "Rs.350/-",Colors.pinkAccent),
      Category("Drinks", "Rs.500/-",Colors.blueAccent),
      Category("Meat", "Rs.600/-",Colors.yellowAccent)

    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("ListViewBuilder"),
      ),

      body: ListView.builder(
          itemCount: categoryList.length,
          itemBuilder: (context,index){
            return Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 5),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(color: categoryList[index].categoryColor,borderRadius: BorderRadius.circular(8)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(categoryList[index].categoryName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),

                  SizedBox(height: 10,),

                  Text(categoryList[index].categoryPrice,style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black),),


                ],
              ),

            );
          }),
    );
  }
}
