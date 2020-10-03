import 'package:flutter/material.dart';
import 'package:hypex/congratulations.dart';
import 'package:hypex/widgets/customdesign.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        Positioned(
          top: 70,
          left: 70,
          child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.cover,
          ),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Buy low, Sell high. Travel across the globe trading your favorite items. make it to the top of the leaderboards for your chance at winning awesome prizes.",
            textAlign: TextAlign.justify,
          ),
        )),
        Positioned(
          bottom: 160,
          left: 30,
          child: Column(
            children: [
              Customdesign(
                text: "SignUp With Google",
                color: Colors.white,
              ),
              Customdesign(
                text: "SignUp With Facebook",
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          left: 50,
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Congratspage()));
                  },
                  child: Text("Click Here To Log in")),
                  SizedBox(width: 30,),
              Text("Need to Help?"),
            ],
          ),
        )
      ],
    ));
  }
}
