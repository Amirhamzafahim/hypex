import 'package:flutter/material.dart';
import 'package:hypex/widgets/topbarwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class Airport extends StatefulWidget {
  @override
  _AirportState createState() => _AirportState();
}

class _AirportState extends State<Airport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6E7ED).withOpacity(0.9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Topbar(),

                SizedBox(
                  height: 10,
                ),

                Container(
                  decoration: BoxDecoration(
                
                  ),
                  height: 50,
                  //  width: 50,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Icon(Icons.arrow_forward_ios),
                      SizedBox(
                        width: 60,
                      ),
                      Text("AIRPORT"),
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
                    child: Center(child: Text("Flight List")),
                  ),
                ),
                itemcatgory(),
                itemlist(),
                itemlist(),
                itemlist(),
                itemlist(),
                section("B"),
                 itemlist(),
                itemlist(),
                itemlist(),
                itemlist(),
                section("C"),
                 itemlist(),
                itemlist(),
                itemlist(),
                itemlist(),
                section("D"),

                // GridTile(child:Icon(Icons.access_alarm),footer: Text("faas"), )
              ],
            ),
          ),
        ),
      ),
    );
  }

  section(var txt) {
    return Text(
      "$txt                 ",
      style: TextStyle(
          fontFamily: 'Skyfont',
          fontWeight: FontWeight.bold,
          fontSize: 39,
          color: Color(0xff585858)),
    );
  }

  itemlist() {
    return Container(
      height: 50,
      width: 370,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
                color: Color(0xffB1B5C6),
                // blurRadius: 1,
                offset: Offset(1, 1))
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xffF7F8FA).withOpacity(0.10),
              Color(0xffE6E7ED).withOpacity(0.7),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(3)),
      child: Row(
        children: [
          Text(
            "TORONTO",
            style: TextStyle(
                fontFamily: 'Skyfont',
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Color(0xff585858)
                // fontFamily: ,

                ),
          ),
          SizedBox(
            width: 17,
          ),
          Image.asset("assets/images/fuel.png"),
          Text(
            "1000",
            style: TextStyle(
                fontFamily: 'Skyfont',
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Color(0xff585858)
                // fontFamily: ,

                ),
          ),
          Image.asset("assets/images/money.png"),
          Text(
            "\$1000k",
            style: TextStyle(
                fontFamily: 'Skyfont',
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Color(0xff585858)
                // fontFamily: ,

                ),
          ),
        ],
      ),
    );
  }

  itemcatgory({
    String text1,
  }) {
    return Container(
      height: 50,
      width: 370,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xffB1B5C6),
                // blurRadius: 1,
                offset: Offset(1, 1))
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xffF7F8FA).withOpacity(0.10),
              Color(0xffE6E7ED).withOpacity(0.7),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // SizedBox(
          //   width: 10,
          // ),
          Text(
            "CITY/COUNTRY",
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff3C4260),
            ),
            textAlign: TextAlign.justify,
          ),
          // SizedBox(
          //   width: 50,
          // ),
          Text(
            "FUEL USE",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff3C4260),
            ),
            textAlign: TextAlign.justify,
          ),
          // SizedBox(
          //   width: 30,
          // ),
          Text(
            "TICKET PRICE",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff3C4260),
            ),
            textAlign: TextAlign.justify,
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
