import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget {
  const DropDownDemo({super.key});

  @override
  State<DropDownDemo> createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {

  String dropdownValue = "SelectState";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("DropDown Demo"),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,

        children: [


          Center(
            child: DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue){
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>["SelectState", "AndhraPradesh","TamilNadu","Telangana","Karnataka"]
              .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),);
              }).toList(),
            ),
          ),

          const SizedBox(height: 50),

          GestureDetector(
            onTap: (){
              setState(() {

                print("Selected State is $dropdownValue");
              });
            },
            child: Container(
              decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(10)),
              height: 50,width: double.infinity,margin: const EdgeInsets.only(left: 25,right: 25),child: Center(child: const Text("Show State")),),
          )
        ],
      ),
    );
  }
}
