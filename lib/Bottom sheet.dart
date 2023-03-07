import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Bottmsheet(),debugShowCheckedModeBanner: false,));
}
class Bottmsheet extends StatelessWidget {
  void show(BuildContext context){

    showModalBottomSheet(context: context, builder: (context)=> Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ListTile(leading: Icon(Icons.train),title: Text("Train"),),
          ListTile(leading: Icon(Icons.share),title: Text("Share"),),
          ListTile(leading: Icon(Icons.save_alt),title: Text("Download"),)
        ],
      ),
    ));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Bottom Sheet"),
      ),
      body: Center(
          child: GestureDetector(
        child: const Text("Bottom Sheet"),
        onLongPress:()=>show(context),
      )),
    );
  }
}
