import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  List<dynamic> bucketListData = [];

  Future<void> getData() async {
    try {
      Response response = await Dio().get(
          "https://flutterapitest123-b32da-default-rtdb.firebaseio.com/bucketlist.json");

      print(response.data);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title:
                  Text("Can not connect to server try again in few minutes!"),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bucket List")),
      body: Column(
        children: <Widget>[
          ElevatedButton(onPressed: getData, child: Text("Get data")),
          Expanded(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("Hey"),
              );
            }),
          )
        ],
      ),
    );
  }
}
