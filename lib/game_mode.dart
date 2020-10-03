import 'package:flutter/material.dart';
import 'package:hypex/confirm_league.dart';
import 'package:hypex/game_mode.dart';
import 'package:hypex/sign_in.dart';
import 'package:hypex/widgets/customdesign.dart';

class Gamemode extends StatefulWidget {
  @override
  _GamemodeState createState() => _GamemodeState();
}

class _GamemodeState extends State<Gamemode> {
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
            Text("Select Game Mode"),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Confirmleague()));
              },
              child: Column(
                children: [
                  Customdesign(
                    text: "Daily",
                    color: Colors.white,
                  ),
                  Customdesign(
                    text: "Weekly",
                    color: Colors.white,
                  ),
                  Customdesign(
                    text: "Monthly",
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
