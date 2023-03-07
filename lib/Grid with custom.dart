import 'package:flutter/material.dart';

class Grid_Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.extent(
      maxCrossAxisExtent: 20,
      children: List.generate(20, (index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Image(image: NetworkImage("2wCEAAkGBxAREhMSEhAVFRUWGBoVFRUXEBUXEhUYGBgWGBcVFRMYHiggGRolHRUYITEhJSkrLi4uFyAzODMuNygtLisBCgoKDg0OGxAQGy0lHyUuLS0tLS0tLS0vLS0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf")),
          ),
        );
      }),
    ));
  }
}
