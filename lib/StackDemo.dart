import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Mystack(),
  ));
}

class Mystack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.red,
          ),
          const Positioned(
            right: 30,
            bottom: 10,
            child: Text(
              "poda",
              style: TextStyle(fontSize: 20),
            ),
          ),
           Positioned(
            child: Container(
                child: Icon(
              Icons.comment_bank,
              size: 70,
            )),
          )
        ],
      ),
    );
  }
}
