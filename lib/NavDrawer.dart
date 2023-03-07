import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: NavDrawerr()));
}
class NavDrawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer:Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.blue),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("Arjun"),
                accountEmail: const Text("arjun007@gmail.com"),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    print("current profile");
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/virat.jpg"),
                  ),
                ),
                otherAccountsPictures:const [
                   CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Rohith DP.jpg"),),
                     CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Rohith DP.jpg"),
                  )
                ],
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://img.freepik.com/free-photo/top-view-background-beautiful-white-grey-brown-cream-blue-background_140725-72219.jpg?w=2000")
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
