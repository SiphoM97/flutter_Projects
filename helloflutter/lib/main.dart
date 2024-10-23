import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            centerTitle: true,
            title: Text("Avatar The Last airbender!"),
          ),
          body: Container(
              padding: EdgeInsets.all(20),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Water bending",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Image.network(
                          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b61c488d-15ea-4c50-ad98-8770a9654c84/dhdrd2h-d3001f20-b07f-45da-b92e-796dbd73b59a.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I2MWM0ODhkLTE1ZWEtNGM1MC1hZDk4LTg3NzBhOTY1NGM4NFwvZGhkcmQyaC1kMzAwMWYyMC1iMDdmLTQ1ZGEtYjkyZS03OTZkYmQ3M2I1OWEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.Kxck_z6f1H0zxt5uETiw2PGkqhvvp8_HzLwvD8_2RJE"),
                      SizedBox(height: 20),
                      Text(
                        "Kitara",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png",
                          height: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sipho",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("founder",
                                style: TextStyle(color: Colors.white)),
                            Text("LImitlessBytes",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
