import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'international.dart';
import 'canada.dart';



void main()=> runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget{
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>{
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();


  final pageOption =<Widget> [
    international(),
    Canada(),
  ];

  @override
  Widget build (BuildContext context){
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.account_balance, size: 30),
          Icon(Icons.ac_unit, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.orange,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index){

          setState((){
            _page = index;

          });

        },
      ),
      body: pageOption[_page],
     );
  }


  void changePage(){
    if(_page == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => international()),
      );

    }
  }



}

