import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text("Drawer data"),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("ToDo App"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                print("The plus icon is clicked");
              },
              child: Icon(
                Icons.add,
              ),
            ),
          )
        ],
      ),
    );
  }
}
