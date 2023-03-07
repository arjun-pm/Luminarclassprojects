import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("CHRISTMAS STORE")),
      body: ListView(
        children:  [
          Card(
            elevation: 30,
            color: Colors.green,
            shadowColor: Colors.black,
            child: ListTile(
              title: const Text("Jingle Bells"),
              subtitle: const Text("In Stock"),
              leading:const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/previews/000/082/887/original/jingle-bells-vectors-with-bows.jpg")),
              trailing: Wrap(
                children:const [
                  Icon(Icons.message),
                  SizedBox(width: 20,),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          const Card(
            elevation: 30,
            color: Colors.green,
            shadowColor: Colors.black,
            child: ListTile(
                title: Text("Cap"),
                subtitle: Text("Only 4 left"),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2012/04/28/18/17/santas-hat-43847__340.png")),
                trailing: Icon(Icons.phone)),
          ),
          const Card(
            elevation: 30,
            color: Colors.green,
            shadowColor: Colors.black,
            child: ListTile(
                title: Text("Candles"),
                subtitle: Text("In stock"),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1577025728734-7ec67bdb97d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hyaXN0bWFzJTIwY2FuZGxlc3xlbnwwfHwwfHw%3D&w=1000&q=80")),
                trailing: Icon(Icons.phone)),
          ),
          const Card(
            elevation: 30,
            color: Colors.green,
            shadowColor: Colors.black,
            child: ListTile(
                title: Text("Candy"),
                subtitle: Text("In stock"),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "data:image/png;base64,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")),
                trailing: Icon(Icons.phone)),
          ),
          const Card(
            elevation: 30,
            color: Colors.green,
            shadowColor: Colors.black,
            child: ListTile(
                title: Text("Cake"),
                subtitle: Text("In stock"),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYFm_eBpBbX-KwVPk1wT2A9EI_EAOadfrtfQ&usqp=CAU")),
                trailing: Icon(Icons.phone)),
          ),
        ],
      ),
    );
  }
}
