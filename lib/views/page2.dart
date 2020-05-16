import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {
  var names=["Antony","Ananthu","Anzar","Ismail","Antony","Ananthu","Anzar","Ismail","Antony","Ananthu","Anzar","Ismail"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: names.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemBuilder: (context,index){
          return Card(
            child: Center(child: Text(names[index])),
          );
          }
      ),
    );
  }
}
