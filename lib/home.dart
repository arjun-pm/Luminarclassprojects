import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(){
  runApp(MaterialApp(home: Home(),));
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
        ),
        body: Column(
          children: [
            const Center(

                child: Text(
              "Login page",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "UserName",
                    labelText: "USERNAME",
                    prefixIcon: Icon(Icons.account_box_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "PASSWORD",
                    prefixIcon: Icon(Icons.visibility_off),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Nirthi Podo",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: const Text("Login")),
            const SizedBox(
              height: 60,
            ),
            TextButton(
                onPressed: () {},
                child: const Text("Not a user ? Register Here"))
          ],
        ));
  }
}
