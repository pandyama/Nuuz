import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:http/http.dart' as http;
import 'package:country_icons/country_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'main.dart';
import 'dart:io';
import 'model.dart';
import 'news_repository.dart';



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
  List<news> result = new List<news>();
  var apiKey;

  Future<news> newsapi;

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
    listenForNews();
  }


  void listenForNews() async {
    final List<news> stream = await getNews("ca");
      setState(()=> result = stream);
  }



  @override
  Widget build(BuildContext context) {
    if (result == null) {
      return new Container();
    }
    else {
      return new Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: new AppBar(
            centerTitle: true,
            backgroundColor: Colors.orangeAccent,
            title: Column(

              children: [
                Text("NUUZ",style: TextStyle(color: Colors.black)),
                Text("Canada", style: TextStyle(color: Colors.white),textScaleFactor: .8,)
              ],
            )
          ),
          backgroundColor: Colors.orange,

            body: new ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: result == null ? 0 : result.length,
              padding: new EdgeInsets.all(6.0),
              itemBuilder: (BuildContext context, int index){
                return new GestureDetector(
                  onTap: () => launch(result[index].url.toString()),
                  child:
                  new Card(
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
                                            result[index].image.toString()))),
                              ),
                              Container(

                                  height: 170,
                                  child: Padding(
                                      padding: EdgeInsets.all(1),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Container(
                                                  width: 260,
                                                  child: Text(result[index].title != null ? result[index].title:'No Info Available',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255, 48, 48, 54))))),
                                          Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Container(
                                                  width: 260,
                                                  child: Text(result[index].description!= null ? result[index].description:'No Info Available',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color.fromARGB(
                                                              255, 48, 48, 54)))))
                                        ],
                                      )))
                            ],
                          )
                      )
                  )
                );

              },
            )
      );
    }
  }
}
