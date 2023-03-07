import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyTable(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(decoration: BoxDecoration(border:Border.all(width: 10)),
          columns: const [
            DataColumn(label: Text("ID")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("1")),
              DataCell(Text("Arjun")),
              DataCell(Text("21")),
            ]),
            DataRow(
              cells: [
                DataCell(Text("1")),
                DataCell(Text("Vishnu")),
                DataCell(Text("21")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("1")),
                DataCell(Text("Sabu")),
                DataCell(Text("21")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("1")),
                DataCell(Text("Ajith")),
                DataCell(Text("21")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
