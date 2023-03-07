import 'package:flutter/material.dart';

class Grid_count extends StatelessWidget {
  var images = [
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(20, (index) {
          return Card(
            child: Image(image: AssetImage(images[index])),
          );
        }),
      ),
    );
  }
}
