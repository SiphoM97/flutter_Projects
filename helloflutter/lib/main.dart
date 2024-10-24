import 'package:flutter/material.dart';
import 'package:helloflutter/TheContainer.dart';

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
          body: Thecontainer()),
    );
  }
}
