import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_with_builder extends StatelessWidget {
  var image = [
    "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/hat.png"
        "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/hat.png"
        "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/hat.png"
        "assets/icons/christmas-tree.png",
    "assets/icons/christmas-wreath.png",
    "assets/icons/hat.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              child: Image.asset(image[index]),
            );
          }),
    );
  }
}
