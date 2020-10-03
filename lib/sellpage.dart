import 'package:flutter/material.dart';
import 'package:hypex/widgets/listingdata_design.dart';
import 'package:hypex/widgets/loadingwidget.dart';
import 'package:hypex/widgets/topbarwidget.dart';

import 'package:neumorphic/neumorphic.dart';

class Sellpage extends StatefulWidget {
  @override
  _SellpageState createState() => _SellpageState();
}

class _SellpageState extends State<Sellpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffE6E7ED),
      body:SafeArea(
              child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/bg.png",fit: BoxFit.cover,),
             SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Topbar(),


              Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffB1B5C6),
                          // blurRadius: 1,
                          offset: Offset(1, 1))
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffE6E7ED).withOpacity(0.7),
                        Color(0xffF7F8FA).withOpacity(0.9),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(3)),
                child: Center(
                  child: Text(
                    "Sell",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff3C4260),
                    ),
                  ),
                ),
              ),
              divider(),
              Container(
                height: 50,
                // width: 300,
                width: 340,

                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffB1B5C6),
                          // blurRadius: 1,
                          offset: Offset(1, 1))
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffE6E7ED).withOpacity(0.7),
                        Color(0xffF7F8FA).withOpacity(0.9),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(3)),
                child: Center(
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                      TextSpan(text: "Your are all about sell"),
                      TextSpan(
                          text: "10 units of",
                          style: TextStyle(color: Colors.green)),
                      TextSpan(
                          text:
                              '''This amazing item! Please verify the transaction details below.
                
                '''),
                    ]))),
              ),
              divider(),
              listingdata(
                  text1: "Current item price",
                  img: "assets/images/money.png",
                  text2: "\$1000"),
              divider(),
              math(text1: "X"),
              divider(),
              listingdata(
                  text1: "Amount to buy      ",
                  img: "assets/images/fuel.png",
                  text2: "\$1000"),
              divider(),
              math(text1: "="),
              divider(),
              listingdata(
                  text1: "Total cost of          \n transaction     ",
                  img: "assets/images/money.png",
                  text2: "\$1000"),
              divider(),
              transaction(
                  text1: "Are you sure you want to make this transaction?"),
              divider(),
              listingdata(
                  text1: "Cash after transaction",
                  img: "assets/images/fuel.png",
                  text2: "\$1000"),
              divider(),
              divider(),
              listingdata(
                  text1: "Inventory after transaction",
                  img: "assets/bag.png",
                  text2: "\$1000"),
              divider(),
              Row(
                children: [
                  confrim("Cancel"),
                  SizedBox(
                    width: 10,
                  ),
                  confrim("Confirm"),
                ],
              ),
            ],
          ),
        ),
          ],
          
        ),
      )
    );
  }

  confrim(String txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xffB1B5C6),
                  // blurRadius: 1,
                  offset: Offset(1, 1))
            ],
            gradient: LinearGradient(
              colors: [
                Color(0xffE6E7ED).withOpacity(0.7),
                Color(0xffF7F8FA).withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(3)),
        child: Center(child: Text("$txt")),
      ),
    );
  }

  transaction({
    String text1,
  }) {
    return Container(
      height: 50,
      width: 340,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xffB1B5C6),
                // blurRadius: 1,
                offset: Offset(1, 1))
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xffE6E7ED).withOpacity(0.7),
              Color(0xffF7F8FA).withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(3)),
      child: Text(
        "$text1",
        style: TextStyle(
          fontSize: 15,
          color: Color(0xff3C4260),
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }

  math({
    String text1,
  }) {
    return Container(
      height: 40,
      width: 340,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xffB1B5C6),
                // blurRadius: 1,
                offset: Offset(1, 1))
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xffE6E7ED).withOpacity(0.7),
              Color(0xffF7F8FA).withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(3)),
      child: Center(
        child: Text(
          "$text1",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff3C4260),
          ),
        ),
      ),
    );
  }

  listingdata({
    String text1,
    String text2,
    String img,
  }) {
    return Container(
      height: 60,
      width: 340,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xffB1B5C6),
                // blurRadius: 1,
                offset: Offset(1, 1))
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xffE6E7ED).withOpacity(0.7),
              Color(0xffF7F8FA).withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(3)),
      child: Row(
        children: [
          Text(
            "$text1",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff3C4260),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffB1B5C6),
                      // blurRadius: 1,
                      offset: Offset(1, 1))
                ],
                gradient: LinearGradient(
                  colors: [
                    Color(0xffE6E7ED).withOpacity(0.7),
                    Color(0xffF7F8FA).withOpacity(0.9),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Image.asset("$img"), Text("$text2")],
            ),
          ),
        ],
      ),
    );
  }

  divider() {
    return SizedBox(
      height: 1,
    );
  }
}
