import 'package:flutter/material.dart';
import 'package:todoapp/addToDo.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  String text = "Simple Text!";
  List<String> toDoList = ["Code", "Eat", "Sleep", "Repeat"];
  void changeText({required String toDoText}) {
    setState(() {
      text = "$toDoText";
    });
  }

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
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          height: 200,
                          child: AddToDo(changeText: changeText),
                        ),
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
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(toDoList[index]),
              );
            }));
  }
}
