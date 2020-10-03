import 'package:flutter/material.dart';
import 'package:hypex/select_league.dart';
import 'package:hypex/sign_in.dart';
import 'package:hypex/widgets/customdesign.dart';

class Congratspage extends StatefulWidget {
  @override
  _CongratspageState createState() => _CongratspageState();
}

class _CongratspageState extends State<Congratspage> {
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
          Text('''                      Congratulations! 
          Your Account Has been Created. 
          Continue To Complete The Tutorial.
          '''),
          SizedBox(height: 30,),

         InkWell (
           onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>League() ) );

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
          SizedBox(height: 25,),


          Text("logout"),

        
        
       
       

        ],
      ),
      Positioned(
        bottom: 15,
      left: 120,
        
        child: Text("Nedd To Help"),

      )
        ],

      )
    );
  }
}
