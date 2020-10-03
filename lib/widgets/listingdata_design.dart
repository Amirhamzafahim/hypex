import 'package:flutter/material.dart';

import 'package:neumorphic/neumorphic.dart';
class Listingdatadesign extends StatelessWidget {
  final String text;
  Listingdatadesign(this.text);
  @override
  Widget build(BuildContext context) {
    return  NeuCard(
                  curveType: CurveType.concave,
                  bevel: 6,
                  decoration: NeumorphicDecoration(
                      color: Color(0xffE5E5E5),
                      // E5E5E5
                      borderRadius: BorderRadius.circular(5)),
                  height: 50,
                  width: 335,
              child: Center(
                child: Text("$text"),

              ),
                );
              
  }
}