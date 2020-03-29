import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepPurple[900],
          elevation: 30,
          centerTitle: true,
          title: Text("Overview",),
        ),
        body: Container(
            color: Colors.cyan[50],
            child:ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 90,
                  width: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 1],
                      colors: [
                        Color(0xFFE8EAF6),
                        Color(0XFFC5CAE9),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("Total Cases",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Text("500",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 90,
                  width: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0],
                      colors: [
                        Color(0xFFE1BEE7),
                        Color(0XFFCE93D8),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("Deaths",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text("200",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 90,
                  width: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0],
                      colors: [
                        Color(0xFFC8E6C9),
                        Color(0XFFA5D6A7),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("Recoveries",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text("100",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 90,
                  width: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0],
                      colors: [
                        Color(0xFF00ACC1),
                        Color(0XFF80DEEA),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("Active Cases",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text("50",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],)));
  }}


