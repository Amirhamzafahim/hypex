import 'package:flutter/material.dart';
import 'package:hypex/data/homescreendata.dart';
import 'package:hypex/data/topbardata.dart';
import 'package:hypex/widgets/topbarwidget.dart';

class Cellphone extends StatefulWidget {
  @override
  _CellphoneState createState() => _CellphoneState();
}

class _CellphoneState extends State<Cellphone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6E7ED).withOpacity(0.9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child:SingleChildScrollView (
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Topbar(),
             
                SizedBox(
                  height: 10,
                ),

                Container(
                  decoration: BoxDecoration(),
                  height: 50,
                  //  width: 50,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Icon(Icons.arrow_forward_ios),

                      SizedBox(
                        width: 60,
                      ),
                      Text("CELL PHONE"),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(Icons.filter_6),
                      Icon(Icons.search),
                    ],
                  ),
                ),

                Text(
                    "The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Brick quiz whangs jumpy veldt fox. Bright."),

                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 4,
                    color: Colors.grey,
                    child: Center(child: Text("HOME SCREEN")),
                  ),
                ),
                Wrap(
                  children: [
                    listdata("inventory"),
                    listdata("inventory"),
                    listdata("inventory"),
                    listdata("inventory"),
                    listdata("inventory"),
                    listdata("inventory"),
                    listdata("inventory"),
                    listdata("inventory"),
                    listdata("inventory"),
                  ],
                )

                // GridTile(child:Icon(Icons.access_alarm),footer: Text("faas"), )
              ],
            ),
          ),
        ),
      ),
    );
  }

  listdata(String text) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 90,
          width: 98,
          child: Card(
            color: Color(0xffB1B5C6).withOpacity(0.5),
            child: Image.asset("assets/bag.png"),
          ),
        ),
        Text("$text")
      ],
    );
  }
}
