import 'package:flutter/material.dart';
import 'package:helloflutter/child_one.dart';
import 'package:helloflutter/child_three.dart';
import 'package:helloflutter/child_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              "Avatar The Last airbender!",
              style: TextStyle(
                  fontFamily: "AvatarAirbender",
                  fontSize: 35,
                  color: Colors.white),
            ),
          ),
          body: Container(
              padding: EdgeInsets.all(20),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ChildOne(),
                  ChildTwo(),
                  ChildThree(),
                ],
              ))),
    );
  }
}
