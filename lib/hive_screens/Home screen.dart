import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:rive/rive.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("user");
  runApp(GetMaterialApp(
      home: LoginScreen()
  ));
}



class LoginScreen extends StatelessWidget {
  get email_controller => null;

  get Password_controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            const RiveAnimation.asset("assets/Rive/4357-8952-noon-nap.riv",
              fit: BoxFit.fill,),
            Positioned(top: 200,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(.3),
                borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                     TextField(
                      controller: email_controller,
                       decoration: const InputDecoration(
                         hintText: "Email",
                       ),
                    ),
                    TextField(
                      controller: Password_controller,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: const InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                    ElevatedButton(onPressed: (){
                      Get.to(()=>);
                    }, child: const Text("Login Here")),
                    TextButton(onPressed: (){}, child: const Text(""))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}