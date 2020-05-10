import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  var data = [
    {"name": "Antony", "age": 22},
    {"name": "Ananthu", "age": 28},
    {"name": "Anzar", "age": 21}
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
                    leading: Icon(Icons.perm_identity),
                    trailing: int.parse(data[index]["age"].toString())>25? Icon(Icons.check): Icon(Icons.clear),
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