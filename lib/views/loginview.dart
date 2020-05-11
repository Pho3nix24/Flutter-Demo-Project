import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  var data = [
    {"image":"images/Antony.jpg","name": "Antony", "age": 22},
    {"image":"images/ananthu.jpg","name": "Ananthu", "age": 28},
    {"image":"images/anzar.jpg","name": "Anzar", "age": 21},
    {"image":"images/sravan.jpg","name": "Sravan", "age": 21},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return
                  Card(
                    elevation: 5.0,
                    child: ListTile(
                      leading: ClipOval(child: Image(image:AssetImage(data[index]["image"]),)),
                      //trailing: int.parse(data[index]["age"].toString()) > 25
                       //   ? Icon(Icons.check)
                       //   : Icon(Icons.clear),
                      title: Text("Name: " + data[index]["name"]),
                      subtitle: Text("Age " + data[index]["age"].toString()),
                    ),
                  );
              }),
        ),
      ),
    );
  }
}
