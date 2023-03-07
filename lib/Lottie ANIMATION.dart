import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(const MaterialApp(home: MyLottie(),));
}

class MyLottie extends StatefulWidget {
  const MyLottie({Key? key}) : super(key: key);

  @override
  State<MyLottie> createState() => _MyLottieState();
}

class _MyLottieState extends State<MyLottie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Lottie.network("https://assets2.lottiefiles.com/private_files/lf30_uqcbmc4h.json"),
          Lottie.asset("assets/Lotties/101336-toucan.json")
        ],
      ),
    );
  }
}
