import 'package:flutter/material.dart';
import 'package:hypex/data/homescreendata.dart';
import 'package:hypex/data/topbardata.dart';
import 'package:hypex/widgets/topbarwidget.dart';

class Marketplace extends StatefulWidget {
  @override
  _MarketplaceState createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  @override
  Widget build(BuildContext context) {
    var responsive=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE6E7ED).withOpacity(0.9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Topbar(),
              SizedBox(
                height: 8,
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
                    Text("Market Place"),
                    SizedBox(
                      width: 90,
                    ),
                    Icon(Icons.filter_6),
                    Icon(Icons.search),
                  ],
                ),
              ),

              Text(
                  "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No."),

              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 4,
                  color: Colors.grey,
                  child: Center(child: Text("Available Items")),
                ),
              ),

              itemcatgory(),

              divider(),

              itemlist(),
              divider(),

              itemlist2nd(),
              divider(),

              itemlist(),
              divider(),

              itemlist2nd(),
              divider(),

              itemsection("B"),
                divider(),

              itemlist(),
              divider(),

              itemlist2nd(),
              divider(),

              itemlist(),
              divider(),

              itemlist2nd(),
              divider(),

              itemsection("C")


              // divider(),
              // itemlist(),

              // GridTile(child:Icon(Icons.access_alarm),footer: Text("faas"), )
            ],
          ),
        ),
      ),
    );
  }
 itemsection(var txt) {
    return Container(
                height: 25,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    // color: Colors.blueGrey,
                    color: Color(0xff585858),

                    borderRadius: BorderRadius.circular(5)),
                child: Text("$txt"),
              );
  }
  itemlist2nd() {
    return Container(
        height: 80,
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
        child: Stack(
          children: [
            Positioned(
              top: 15,
              child: Image.asset("assets/images/shoe.png"),
            ),
            Positioned(
              left: 38,
              top: 5,
              child: Container(
                height: 25,
                width: 110,
                decoration: BoxDecoration(
                    // color: Colors.blueGrey,
                    color: Color(0xff585858),

                    borderRadius: BorderRadius.circular(5)),
                child: Center(child: Text("Iphone SE 7")),
              ),
            ),
            Positioned(
              left: 38,
              top: 40,
              child: Container(
                height: 25,
                width: 300,
                decoration: BoxDecoration(
                    // color: Colors.blueGrey,
                    color: Color(0xff585858),

                    borderRadius: BorderRadius.circular(5)),
                child: Text("@13:46 CapnSmakn -567 units"),
              ),
            ),
            Positioned(
              left: 165,
              top: 5,
              child: Row(
                children: [
                  Image.asset("assets/images/money.png"),
                  Container(
                    height: 25,
                    // width: 90,
                    decoration: BoxDecoration(
                        // color: Colors.blueGrey,
                    color: Color(0xff585858),

                        borderRadius: BorderRadius.circular(5)),
                    child: Text("\$100k"),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 5,
              child: Row(
                children: [
                  Image.asset("assets/images/money.png"),
                  Container(
                    height: 25,
                    // width: 90,
                    decoration: BoxDecoration(
                        // color: Colors.blueGrey,
                    color: Color(0xff585858),

                        borderRadius: BorderRadius.circular(5)),
                    child: Text("\$100k"),
                  ),
                  Container(
                    height: 25,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Downtick.png")),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  itemlist() {
    return Container(
        height: 70,
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
        child: Stack(
          children: [
            Positioned(
              top: 15,
              child: Image.asset("assets/images/shoe.png"),
            ),
            Positioned(
              left: 35,
              top: 5,
              child: Container(
                height: 25,
                width: 110,
                decoration: BoxDecoration(
                    color: Color(0xff585858),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(child: Text("Iphone SE 7")),
              ),
            ),
            Positioned(
              left: 165,
              top: 5,
              child: Row(
                children: [
                  Image.asset("assets/images/money.png"),
                  Container(
                    height: 25,
                    // width: 90,
                    decoration: BoxDecoration(
                        // color: Colors.blueGrey,
                    color: Color(0xff585858),

                        borderRadius: BorderRadius.circular(5)),
                    child: Text("\$100k"),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 5,
              child: Row(
                children: [
                  Image.asset("assets/images/money.png"),
                  Container(
                    height: 25,
                    // width: 90,
                    decoration: BoxDecoration(
                        // color: Colors.blueGrey,
                    color: Color(0xff585858),

                        borderRadius: BorderRadius.circular(5)),
                    child: Text("\$100k"),
                  ),
                  Container(
                    height: 25,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Uptick.png")),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              ),
            ),
          ],
        ));
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
        children: [
          SizedBox(
            width: 35,
          ),
          Text(
            "ITEM",
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff3C4260),
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            width: 110,
          ),
          Text(
            "CURRENT",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff3C4260),
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            "PREVIOUS",
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
