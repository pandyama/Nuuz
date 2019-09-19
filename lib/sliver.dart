import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class sliver extends StatefulWidget{
  @override
  sliverState createState() => new sliverState();
}

class sliverState extends State<sliver> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child:
          new Container(
            child:
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  title: Text('SliverAppBar'),
                  floating: false,
                  pinned: true,
                  snap: false,
                  backgroundColor: Colors.black,
                  expandedHeight: 200.0,
                ),

                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                  new Card(
                   elevation: 5,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                    ),
                     child: Container(
                          //height: 150.0,
                          child: Row(
                            children: <Widget>[
                              Container(
                                  height: 150,
                                  child:
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                              child: Container(
                                                  width: 260,
                                                  child: Text("Meet", style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromARGB(255, 48, 48, 54)
                                                  ))
                                              )
                                          ),
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                              child: Container(
                                                  width: 260,
                                                  child: Text("Pandya", style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromARGB(255, 48, 48, 54)
                                                  ))
                                              )
                                          )
                                        ],
                                      )
                                  )
                              )
                            ],
                          )
                      ),
                      ),
                      new Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(
                          //height: 150.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    height: 150,
                                    child:
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                child: Container(
                                                    width: 260,
                                                    child: Text("Meet", style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(255, 48, 48, 54)
                                                    ))
                                                )
                                            ),
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                child: Container(
                                                    width: 260,
                                                    child: Text("Pandya", style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(255, 48, 48, 54)
                                                    ))
                                                )
                                            )
                                          ],
                                        )
                                    )
                                )
                              ],
                            )
                        ),
                      ),
                      new Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(
                          //height: 150.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    height: 150,
                                    child:
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                child: Container(
                                                    width: 260,
                                                    child: Text("Meet", style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(255, 48, 48, 54)
                                                    ))
                                                )
                                            ),
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                child: Container(
                                                    width: 260,
                                                    child: Text("Pandya", style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(255, 48, 48, 54)
                                                    ))
                                                )
                                            )
                                          ],
                                        )
                                    )
                                )
                              ],
                            )
                        ),
                      ),
                      new Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(
                          //height: 150.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    height: 150,
                                    child:
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                child: Container(
                                                    width: 260,
                                                    child: Text("Meet", style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(255, 48, 48, 54)
                                                    ))
                                                )
                                            ),
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                child: Container(
                                                    width: 260,
                                                    child: Text("Pandya", style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(255, 48, 48, 54)
                                                    ))
                                                )
                                            )
                                          ],
                                        )
                                    )
                                )
                              ],
                            )
                        ),
                      ),

                    ]
                  ),
//                  itemExtent: 100.0,
//                  delegate: SliverChildListDelegate(
//                    [
//                      Container(color: Colors.red),
//                      Container(color: Colors.purple),
//                      Container(
//                        //height: 150.0,
//                        child: Row(
//                          children: <Widget>[
//
//                            Container(
//                                height: 150,
//                                child:
//                               // Padding(
//                                    //padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
//                                    Column(
//                                      crossAxisAlignment: CrossAxisAlignment.start,
//                                      children: <Widget>[
//                                       // Padding(
//                                            //padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
//                                             Container(
//                                                width: 260,
//                                                child: Text("Meet", style: TextStyle(
//                                                    fontSize: 12,
//                                                    color: Color.fromARGB(255, 48, 48, 54)
//                                                ))
//                                            ),
//                                        //),
//                                       // Padding(
//                                            //padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
//                                            Container(
//                                                width: 260,
//                                                child: Text("Pandya", style: TextStyle(
//                                                    fontSize: 12,
//                                                    color: Color.fromARGB(255, 48, 48, 54)
//                                                ))
//                                            )
//                                       // )
//                                      ],
//                                    )
//                                //)
//                      ),
//                      Container(color: Colors.green),
//                      Container(color: Colors.orange),
//                      Container(color: Colors.yellow),
//                      Container(color: Colors.pink),
//                      Container(color: Colors.orange),
//                      Container(color: Colors.yellow),
//                      Container(color: Colors.pink),
//                    ],
//                  ),
//                ),
//
//              ],
//            ),
          ),
]
            ),
    )
    )
    );
  }
}