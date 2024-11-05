import 'package:flutter/material.dart';

class AddToDo extends StatefulWidget {
  void Function({required String toDoText}) addToDo;
  AddToDo({super.key, required this.addToDo});

  @override
  State<AddToDo> createState() => _AddtodoState();
}

class _AddtodoState extends State<AddToDo> {
  TextEditingController todoText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Add to do"),
        TextField(
          controller: todoText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5),
            hintText: "Write your task here.",
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print(todoText.text);
              widget.addToDo(toDoText: todoText.text);
              todoText.text = "";
            },
            child: Text("Add"))
      ],
    );
  }
}
