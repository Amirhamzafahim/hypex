import 'package:flutter/material.dart';
import 'package:hypex/widgets/listingdata_design.dart';

import 'package:neumorphic/neumorphic.dart';

class Confirmscreen extends StatefulWidget {
  @override
  _ConfirmscreenState createState() => _ConfirmscreenState();
}

class _ConfirmscreenState extends State<Confirmscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffE6E7ED),
      body: Stack(
        fit: StackFit.expand,
        
        
        children: [
          Image.asset("assets/bg.png",fit: BoxFit.cover,),
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
          BoxShadow(
            color: Color(0xffB1B5C6),
            // blurRadius: 1,
          offset: Offset(1, 1)
          )
                
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
                child: Text("CONFiRM",style:TextStyle(fontSize: 20,color: Color(0xff3C4260),),),
              ),
            ),
          // NeuCard(
          //       curveType: CurveType.concave,
          //       bevel: 6,
          //       decoration: NeumorphicDecoration(

          //           color: Color(0xffE5E5E5),
          //           // E5E5E5
          //           borderRadius: BorderRadius.circular(5)),
          //       height: 50,
          //       width: 335,
          //   child: Center(
          //     child: Text("Confirm "),

          //   ),
          //     ),
        ],
      ),


        ],

      )
    );
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
