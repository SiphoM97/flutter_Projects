import 'package:flutter/material.dart';

class ChildTwo extends StatelessWidget {
  const ChildTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b61c488d-15ea-4c50-ad98-8770a9654c84/dhdrd2h-d3001f20-b07f-45da-b92e-796dbd73b59a.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I2MWM0ODhkLTE1ZWEtNGM1MC1hZDk4LTg3NzBhOTY1NGM4NFwvZGhkcmQyaC1kMzAwMWYyMC1iMDdmLTQ1ZGEtYjkyZS03OTZkYmQ3M2I1OWEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.Kxck_z6f1H0zxt5uETiw2PGkqhvvp8_HzLwvD8_2RJE"),
        SizedBox(height: 20),
        Text(
          "Kitara",
          style: TextStyle(fontFamily: "AvatarAirbender", fontSize: 40),
        ),
      ],
    );
  }
}
