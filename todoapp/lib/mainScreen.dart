import 'package:flutter/material.dart';
import 'package:todoapp/addToDo.dart';

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
          InkWell(
            splashColor: Colors.blue,
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 250,
                    );
                  });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
              ),
            ),
          )
        ],
      ),
      body: Addtodo(),
    );
  }
}
