import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'international.dart';
import 'canada.dart';
import 'sliver.dart';
import 'main.dart';


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
    Canada()
  ];

  @override
  Widget build (BuildContext context){
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.flag, size: 30),
          Icon(Icons.flag, size: 30)
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.lightBlue,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index){

         // if(index == 1){
          setState((){
            _page = index;
            //navBarState.setPage(1);
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => international()),
//            );
          });
         // changePage();
          //}
//          if(index == 2){
//            setState((){
//              _page = index;
//
//            });
////            Navigator.push(
////              context,
////              MaterialPageRoute(builder: (context) => sliver()),
////            );
//          changePage();
//          }
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
//      final CurvedNavigationBarState navBarState = _bottomNavigationKey.currentState;
//      navBarState.setPage(1);
    }
  }



}

