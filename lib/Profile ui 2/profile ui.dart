import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profil_Ui(),
  ));
}

class Profil_Ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          Icon(
            Icons.menu_outlined,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: ListView(
          children: [
            Container(
              child: CircleAvatar(
                child: Image(
                image: AssetImage("assets/images/pexels-pixabay-220453.jpg")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
