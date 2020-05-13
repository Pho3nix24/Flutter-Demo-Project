import 'package:flutter/material.dart';
import 'package:flutterdemo/todoapp.dart';
import 'package:flutterdemo/views/counter.dart';
import 'package:flutterdemo/views/loginview.dart';


class MyLoginScreen extends StatelessWidget {
  TextEditingController user=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: user,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.perm_identity),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    hintText: "Username"),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    hintText: "Password"),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  var getUsername=user.text;
                  var getPassword=password.text;
                  if(getUsername=="admin"&&getPassword=="12345")
                    {
                      Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=>ToDoAppp()
                      ));
                      //print("Login Success");
                    }
                  else
                    {
                      print("Invalid");
                    }
                  //print("Hello");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15.0)
                  ),

                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 23.0, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}