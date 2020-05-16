import 'package:flutter/material.dart';


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Name",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Roll No:",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          GestureDetector(
            onTap: (){
              final msg= SnackBar(
                  content: Text("Submit Clicked"));
              Scaffold.of(context).showSnackBar(msg);
            },
            child: Container(
              width: double.infinity,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 20.0,color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
