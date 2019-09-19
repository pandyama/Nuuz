import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'sliver.dart';
import 'main.dart';
import 'dart:io';


class Canada extends StatefulWidget {
  @override
  CanadaState createState() => new CanadaState();
}

class CanadaState extends State<Canada> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  bool flag = false;

  Map<String, dynamic> data;
  var res1;
  List result;
  var apiKey;

  var articleTitle = "";
  var articleDesc = "";
  var articleImg = "";
  var articleIndex;

  var cardTitle = "";
  var cardDesc = "";
  var cardImg = "";

  @override
  void initState() {
    super.initState();
    print("INITIAL STATE");
    getData().then((resultapi) {
      result = resultapi;
    });
  }


  Future<List> getData() async {
    var res = await http.get(
        Uri.parse(
            'https://newsapi.org/v2/top-headlines?country=ca&apiKey=b4949cc19bc54bc2a86e0b16e512329e'),
        headers: {"Accept": "application/json"});

    setState(() {
      res1 = jsonDecode(res.body);
      print("MEET PANDYA");
      print(res1);
      result = res1["articles"];
      //result = res1;
    });
    //print(res1["articles"][0]["author"]);
    //print(res1["articles"][3]);

    //result = res1["articles"];
    //print(result);
    //print(articleTitle = res1["articles"][1]["title"]); //title
    //print("HELLO");
    //print(AI);
    //articleTitle = res1["articles"][AI]["title"];
    //print(articleDesc = res1["articles"][AI]["description"]);
    //print(articleImg = res1["articles"][AI]["urlToImage"]);
    flag = true;

    return result;
  }


  Widget buildWidgets() {
    return new Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 300,
            height: 100,
            child: Text('A card that can be tapped'),
          ),
        ));
  }

  Widget buildNewsCard(List a, var i) {
    //getData();
    //sleep(const Duration(seconds:2));
    print("MEET PANDYA");
    //print(res1);
    articleIndex = i;
    //if(result[i]['urlToImage'] == null || result[i]['title'] == null || result[i]['description'] == null){
    //   i++;
    //}



    return new Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
            height: 150.0,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              result[i]['urlToImage'].toString()))),
                ),
                Container(
                    height: 170,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                    width: 260,
                                    child: Text(result[i]['title'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromARGB(
                                                255, 48, 48, 54))))),
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                    width: 260,
                                    child: Text(result[i]['description'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromARGB(
                                                255, 48, 48, 54)))))
                          ],
                        )))
              ],
            )));

    // ]
    //);
  }

  @override
  Widget build(BuildContext context) {
    if (result == null) {
      return new Container();
    }
    else {
      return new Scaffold(
          backgroundColor: Colors.lightBlue,

//        resizeToAvoidBottomPadding: false,
//        bottomNavigationBar: CurvedNavigationBar(
//            key: _bottomNavigationKey,
//            index: 0,
//            height: 50.0,
//            items: <Widget>[
//              Icon(Icons.add, size: 30),
//              Icon(Icons.list, size: 30),
//              Icon(Icons.compare_arrows, size: 30)
//            ],
//            color: Colors.white,
//            buttonBackgroundColor: Colors.white,
//            backgroundColor: Colors.blueAccent,
//            animationCurve: Curves.easeInOut,
//            animationDuration: Duration(milliseconds: 600),
//            onTap: (index) {
//              if (index == 0) {
//                setState(() {
//                  _page = index;
//                });
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => BottomNavBar()),
//                );
//              //changePage();
//              } else if (index == 2) {
//                setState(() {
//                  _page = index;
//                });
////                Navigator.push(
////                  context,
////                  MaterialPageRoute(builder: (context) => sliver()),
////                );
//              }
//            }),
//        body: Container(
//          color: Colors.blueAccent,
//          alignment: Alignment.center,
//          child: ListView(
//            children: <Widget>[

            body: new ListView.builder(
              itemCount: result == null ? 0 : result.length,
              padding: new EdgeInsets.all(8.0),
              itemBuilder: (BuildContext context, int index){
                return new Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Container(
                        height: 150.0,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          result[index]['urlToImage'].toString()))),
                            ),
                            Container(
                                height: 170,
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                            child: Container(
                                                width: 260,
                                                child: Text(result[index]['title'],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(
                                                            255, 48, 48, 54))))),
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                            child: Container(
                                                width: 260,
                                                child: Text(result[index]['description'],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(
                                                            255, 48, 48, 54)))))
                                      ],
                                    )))
                          ],
                        )));
              },
            )
//            new Card(
//              child: Column(
//                mainAxisSize: MainAxisSize.max,
//                children: <Widget>[
//                   ListTile(
//                    leading: Icon(Icons.album),
//                    title: Text(articleTitle),
//                  )
//                ],
//              )
//            ),
//            new Card(
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(20)
//              ),
//              child: InkWell(
//                splashColor: Colors.blue.withAlpha(30),
//                onTap: () {
//                  print('Card tapped.');
//                },
//                child: Container(
//                  width: 300,
//                  height: 100,
//                  child: Text('A card that can be tapped'),
//                ),
//              )
//            ),
//              buildNewsCard(result, 1),
//              buildNewsCard(result, 2),
//              buildNewsCard(result, 3),
//              buildNewsCard(result, 4),
//              buildNewsCard(result, 5),
//              buildNewsCard(result, 6),
//              buildNewsCard(result, 7),
//              buildNewsCard(result, 8),
//            ],
    //      )
//        ),
//      );
      );
    }
  }

//  void changePage() {
//    if (_page == 1) {
//      Navigator.push(
//        context,
//        //MaterialPageRoute(builder: (context) => international()),
//      );
//    }
//  }
}
