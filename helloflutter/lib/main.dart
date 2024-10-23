import 'package:flutter/material.dart';

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
            backgroundColor: Colors.blue[900],
            centerTitle: true,
            title: Text("Hello Flutter!"),
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
                  Text(
                    "Welcome to Hello flutter App",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: const [
                      Text("Image "),
                      SizedBox(height: 20),
                      Text(
                        "This App is developed by Sipho",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: const [
                        Text("Image", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sipho",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("founder",
                                style: TextStyle(color: Colors.white)),
                            Text("LImitlessBytes",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}