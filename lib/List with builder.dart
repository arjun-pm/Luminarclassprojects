import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_Builder(),
  ));
}

class List_with_Builder extends StatelessWidget {
  var datas = ["item 1", "item 2", "item 3", "item4", "item 5", "item 6"];
  var colors = [700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST WITH BUILDER"),
      ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.green[colors[index]],
            child: Center(
              child: Text(datas[index]),
            ),
          );
        },
      ),
    );
  }
}
