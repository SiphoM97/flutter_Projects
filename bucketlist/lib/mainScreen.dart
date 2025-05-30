import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  List<dynamic> bucketListData = [];
  bool isLoading = false;

  Future<void> getData() async {
    isLoading = true;
    try {
      Response response = await Dio().get(
          "https://flutterapitest123-b32da-default-rtdb.firebaseio.com/bucketlist.json");

      bucketListData = response.data;
      isLoading = false;
      setState(() {});
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
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(wha),
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Bucket List"),
        actions: [
          InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.refresh),
              ))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          getData();
        }
        child: isLoading
            ? LinearProgressIndicator()
            : ListView.builder(
                itemCount: bucketListData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            NetworkImage(bucketListData[index]['Image'] ?? ""),
                      ),
                      title: Text(bucketListData[index]['Item'] ?? ""),
                      trailing:
                          Text(bucketListData[index]['cost'].toString() ?? ""),
                    ),
                  );
                }),
      ),
    );
  }
}
