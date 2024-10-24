import 'package:flutter/material.dart';

class ChildThree extends StatelessWidget {
  const ChildThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Image.network(
            "https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png",
            height: 50,
          ),
          SizedBox(
            width: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Physical Ability",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Mental Ability",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Spiritual Ability",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 3),
                ],
              ),
              SizedBox(width: 20), // Add padding between the columns
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "45%",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "50%",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "60%",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 3),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
