import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todoapp/addToDo.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  List<String> toDoList = ["wake up!"];
  void addToDo({required String toDoText}) {
    setState(() {
      toDoList.insert(0, toDoText);
    });
    updatedLocalData();
    Navigator.pop(context);
  }

  void updatedLocalData() async {
// Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setStringList('toDoList', toDoList);
  }

  void loadData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    toDoList = (prefs.getStringList("toDoList") ?? []).toList();
    setState(() {});
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
                          child: AddToDo(addToDo: addToDo),
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
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  toDoList.removeAt(index);
                                });
                                updatedLocalData();
                                Navigator.pop(context);
                              },
                              child: Text("Mark as done.")),
                        );
                      });
                },
                title: Text(toDoList[index]),
              );
            }));
  }
}
