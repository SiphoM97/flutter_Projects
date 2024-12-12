import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  Future<void> getData() async {
    Response response = await Dio().get(
        "https://flutterapitest123-b32da-default-rtdb.firebaseio.com/bucketlist.json");

    print(response);
  }
// get data from API

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bucket List")),
      body: ElevatedButton(onPressed: getData, child: Text("Get data")),
    );
  }
}
