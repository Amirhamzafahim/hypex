import 'package:flutter/material.dart';
import 'package:hypex/widgets/listingdata_design.dart';

import 'package:neumorphic/neumorphic.dart';

class Quarnlist extends StatefulWidget {
  @override
  _QuarnlistState createState() => _QuarnlistState();
}

class _QuarnlistState extends State<Quarnlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/cover.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 175,
            left: 10,
            child: Text("Activices Recent"),
          ),
       Positioned (
                  left: 0,
                          top: 200,
right:0,
                  child: Container(
                    height: 360,
                    child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
             height: 270,
             width: 280,
             child: Card(
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
               ),
               elevation: 5,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
               topRight: Radius.circular(15),
               topLeft: Radius.circular(15)),
                    image: DecorationImage(
               image: AssetImage(
                 "assets/quarn.jpg",
               ),
               fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Wired"),
                    SizedBox(
             height: 20,
                    ),
                    Text("Lire ad aprenda"),
                    Text("Lire ad aprenda"),
                    SizedBox(
             height: 20,
                    ),
                    Text(
             "Francies",
             style: TextStyle(color: Colors.grey),
                    ),
                  ],
                    ),
                  ),
                ],
               ),
             ),
                    );
                  },
                    ),
                  ),
        ),
        ],
      ),
    ));
  }

  // divider() {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 9, right: 9, bottom: 4),
  //     child: Divider(
  //       height: 5,
  //       color: Colors.grey,
  //     ),
  //   );
  // }
}
