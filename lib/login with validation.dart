import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project_1/ListPage.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State {
  var formkey = GlobalKey<FormState>();
  bool showpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LoginForm"),
        ),
        body: Form(
          key: formkey,
          child: ListView(
            children: [
              const Center(child: Text("LoginPage")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: const Icon(Icons.account_box_sharp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (email) {
                    if (email!.isEmpty || !email.contains("@")) {
                      return "Enter a valid username";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.visibility_off),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpassword){
                              showpassword = false;
                            }else{
                              showpassword = true;
                            }
                          });
                        },
                        icon: Icon(showpassword == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  obscureText: showpassword,
                  obscuringCharacter: "*",
                  textInputAction: TextInputAction.done,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Enter a valid password , length should be greater than 6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListPage()));
                      }
                    },
                    child: const Text("Login")),
              )
            ],
          ),
        )
    );
  }
}
