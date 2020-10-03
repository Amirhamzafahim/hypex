import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hypex/data/topbardata.dart';

class Topbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
                 height: 70,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: data.length,
                   itemBuilder: (BuildContext context, int index) {
                     return Container(
                       // height: 60,
                       width: 75,
                       child: Card(
                         elevation: 2,
                         color: Color(0xffB1B5C6),
                         child: Column(
                           children: [
                             SizedBox(
                               height: 4,
                             ),
                             Image.asset(data[index].img),
                             SizedBox(
                               height: 5,
                             ),
                             Text(data[index].footer),
                           ],
                         ),
                       ),
                     );
                   },
                 ),
               ),

                  Container(
                  height: 10,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25)),
                  child: Container(
                    //  padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(left: 40, right: 40),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xff3AE19E).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
      ],
    );
      
    
  }
}