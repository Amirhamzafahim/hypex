import 'package:flutter/material.dart';
import 'package:hypex/airport.dart';
import 'package:hypex/cellphone.dart';

// import 'package:hypex/widgets/customdesign.dart';

class Confirmleague extends StatefulWidget {
  @override
  _ConfirmleagueState createState() => _ConfirmleagueState();
}

class _ConfirmleagueState extends State<Confirmleague> {
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Are you sure you want to start a new game in"),
            Text("the daily ranked league?"),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cellphone()));
              },
             child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff3C4260)


                          ),
                          child: Center(child: Text("CONTINUE",style: TextStyle(
                            color: Colors.white

                          ),)),

                        )
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
