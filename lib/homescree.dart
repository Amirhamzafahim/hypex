import 'package:flutter/material.dart';
import 'package:hypex/airport.dart';






class HomeBottomNavigationScreen extends StatefulWidget {
  @override
  _HomeBottomNavigationScreenState createState() =>
      _HomeBottomNavigationScreenState();
}
class _HomeBottomNavigationScreenState
    extends State<HomeBottomNavigationScreen> {
  final List<Widget> _children = [
  


  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: _children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        
        type: BottomNavigationBarType.fixed,

        selectedItemColor:Colors.orange ,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        // selectedLabelStyle: labelTextStyle,
        // unselectedLabelStyle: labelTextStyle,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('CART'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}