import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project_1/Grid%20with%20builder.dart';
import 'package:my_project_1/Grid%20with%20custom.dart';
import 'package:my_project_1/ListPage.dart';
import 'package:my_project_1/grid%20view%20with%20count.dart';
import 'package:my_project_1/gridview.dart';
import 'package:my_project_1/home.dart';
import 'package:my_project_1/listview%20custome.dart';
import 'package:my_project_1/login%20with%20validation.dart';
void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>  Grid_Custom ()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          ///set background image for container
            //image: DecorationImage(
              //  fit: BoxFit.cover,
                //image: NetworkImage(
                   // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYmmhNHK8Qwe9Xch05WUNpFNXNOY3v3EFdzA&usqp=CAU"))),
         ///set linearbackground color for container
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.green,
                Colors.white
              ])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/christmas-wreath.png",
                height: 100,
                width: 100,
              ),
              const Text(
                "MERRY CHRISTMAS",
                style: TextStyle(fontSize: 40, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
