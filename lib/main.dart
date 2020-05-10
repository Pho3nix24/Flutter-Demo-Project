import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/views/login.dart';
import 'package:flutterdemo/views/registration.dart';

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.amberAccent,
       /* appBar: AppBar(
          leading: Icon(
            Icons.apps,
            size: 30.0,
          ),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
          title: Text(
            "Demo",
            style: TextStyle(fontSize: 23.0, letterSpacing: 2.0),
          ),
        )*/
        body: Register(),
      ),
    );
  }
}



