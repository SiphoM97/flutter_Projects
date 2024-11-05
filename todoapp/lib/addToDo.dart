import 'package:flutter/material.dart';

class AddToDo extends StatefulWidget {
  void Function() changeText;
  AddToDo({super.key, required this.changeText});

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
              todoText.text = "";
              widget.changeText();
            },
            child: Text("Add"))
      ],
    );
  }
}
