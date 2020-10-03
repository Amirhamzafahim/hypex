import 'package:flutter/material.dart';

class Customdesign extends StatelessWidget {
  final String text;
  final Color color;
  Customdesign({this.color,this.text});
  @override
  Widget build(BuildContext context) {
    return   Container(
      
      
              height: 50,
              width: 300,
              child: Card(
                
                color: color,
                child: Center(child: Text("$text")),
              ),
            );
  }
}