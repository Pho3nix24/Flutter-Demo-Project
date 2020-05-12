import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _c = 0;

  void _increment() {
    setState(() {
      _c++;
    });
  }

  void _decrement() {
    setState(() {
      _c--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.fill)),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        _increment();
                      },
                      child: Text(
                        "Increment",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        _decrement();
                      },
                      child: Text(
                        "Decrement",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                    Text(
                      _c.toString(),
                      style: TextStyle(fontSize: 40.0, color: Colors.amber),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
