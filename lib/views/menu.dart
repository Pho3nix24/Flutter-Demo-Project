import 'package:flutter/material.dart';
import 'package:flutterdemo/views/Page%201.dart';
import 'package:flutterdemo/views/page2.dart';
import 'package:flutterdemo/views/page3.dart';
import 'package:flutterdemo/views/page4.dart';

class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  var _mycurrentindex=0;
  final mypages=[Page1(),Page2(),Page3(),Page4()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: mypages[_mycurrentindex] ,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
           currentIndex: _mycurrentindex,
           // backgroundColor: Colors.red,
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home"),backgroundColor: Colors.red,),
          BottomNavigationBarItem(icon: Icon(Icons.view_list),title: Text("View All"),backgroundColor: Colors.blue,),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("Search"),backgroundColor: Colors.amber,),
          BottomNavigationBarItem(icon: Icon(Icons. feedback), title: Text("Feedback"),backgroundColor: Colors.greenAccent,),
        ],
          onTap: (index){
              setState(() {
                _mycurrentindex=index;
              });
          },
        ),
      ),
    );
  }
}
