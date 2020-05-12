import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  var data = [
    {"image":"https://collegeinfogeek.com/wp-content/uploads/2018/11/Essential-Books.jpg","name": "Antony", "age": 22},
    {"image":"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F24%2F2018%2F09%2Fgettyimages-183822187-1.jpg&q=85","name": "Ananthu", "age": 28},
    {"image":"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Gutenberg_Bible%2C_Lenox_Copy%2C_New_York_Public_Library%2C_2009._Pic_01.jpg/1200px-Gutenberg_Bible%2C_Lenox_Copy%2C_New_York_Public_Library%2C_2009._Pic_01.jpg","name": "Anzar", "age": 21},
    {"image":"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Gutenberg_Bible%2C_Lenox_Copy%2C_New_York_Public_Library%2C_2009._Pic_01.jpg/1200px-Gutenberg_Bible%2C_Lenox_Copy%2C_New_York_Public_Library%2C_2009._Pic_01.jpg","name": "Sravan", "age": 21},
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
                      leading: ClipOval(child: Image(image:NetworkImage(data[index]["image"]),)),
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
