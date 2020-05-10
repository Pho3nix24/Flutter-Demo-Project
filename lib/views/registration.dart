import 'package:flutter/material.dart';
import 'package:flutterdemo/views/login.dart';

class Register extends StatelessWidget {

  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController name=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
             end: Alignment.bottomRight,
              colors: [Colors.amber, Colors.redAccent,Colors.white])),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(85.0),
                      topRight: Radius.circular(85.0))),
              height: MediaQuery.of(context).size.height - 300,
              child: Container(
                margin: EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100.0,
                      ),
                      TextField(
                        controller: name,
                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),hintText: "Enter Name"),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        controller: username,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)), hintText: "Enter Username"),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)), hintText: "Enter Password"),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      GestureDetector(
                        onTap: () {
                         //print("Hello");
                          var getUsername=username.text;
                          var getPassword=password.text;
                          var getName=name.text;
                          print(getName);
                          print(getUsername);
                          print(getPassword);
                        },
                        child: Container(
                          height: 40.0,
                          width: double.infinity,
                          color: Colors.amberAccent,
                          child: Center(
                            child: Text("Register"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      GestureDetector(
                        onTap: (){
                         // print("Login");
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>MyLoginScreen()
                          ));
                        },
                        child: Container(
                          height: 40.0,
                          width: double.infinity,
                          color: Colors.blueAccent,
                          child: Center(
                            child: Text(
                              "Go To Login"
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
