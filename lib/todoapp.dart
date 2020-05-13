import 'package:flutter/material.dart';

class ToDoAppp extends StatefulWidget {
  @override
  _ToDoApppState createState() => _ToDoApppState();
}

class _ToDoApppState extends State<ToDoAppp> {
  TextEditingController con = TextEditingController();
  var mytask = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 70.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Task", border: OutlineInputBorder()),
                  controller: con,
                ),
                RaisedButton(
                  child: Text("Add Task"),
                  onPressed: () {
                    var task = con.text;
                    con.clear();
                    setState(() {
                      mytask.add(task);
                    });
                  },
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: mytask.length == null ? 0 : mytask.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.accessibility),
                          trailing: GestureDetector(
                            onTap: (){
                              setState(() {
                                mytask.removeAt(index);
                              });
                            },
                              child: Icon(Icons.delete,color: Colors.red,)),
                          title: Text(mytask[index].toString()),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
