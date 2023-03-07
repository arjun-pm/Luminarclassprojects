import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ExpansionEx(),
  ));
}

class ExpansionEx extends StatelessWidget {
  const ExpansionEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion Tile"),
      ),
      body: const ExpansionTile(
        title: Text("Colors"),
        subtitle: Text("Expand this tile"),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            title: Text("Red"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
            title: Text("grey"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text("green"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Text("blue"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
            ),
            title: Text("orange"),
          ),
        ],
      ),
    );
  }
}
