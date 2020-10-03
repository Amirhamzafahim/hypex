import 'package:flutter/material.dart';
import 'package:hypex/game_mode.dart';
import 'package:hypex/sign_in.dart';
import 'package:hypex/widgets/customdesign.dart';

class League extends StatefulWidget {
  @override
  _LeagueState createState() => _LeagueState();
}

class _LeagueState extends State<League> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/bg.png",
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select a league"),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Gamemode()));
              },
              child: Column(
                children: [
                  Customdesign(
                    text: "Ranked League",
                    color: Colors.white,
                  ),
                  Customdesign(
                    text: "Un-Ranked League",
                    color: Colors.white,
                  ),
                  Customdesign(
                    text: "Hype-X Areana",
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Go Back"),
          ],
        ),
        Positioned(bottom: 15, left: 130, child: Text("Ne3d Help?"))
      ],
    ));
  }
}
