import 'package:flutter/material.dart';

class ChildOne extends StatelessWidget {
  const ChildOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Water bending",
      style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins-Bold"),
    );
  }
}
