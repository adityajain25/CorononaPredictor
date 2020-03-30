import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen>  {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width;
    double height = MediaQuery. of(context). size. height;
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text("Overview",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontSize: 30,
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.red[10],
            child:ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                SizedBox(
                  height: height*0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    sumcon("Total Cases","722,350",height*0.15,width*0.47,Colors.redAccent,Colors.black45),
                    sumcon("New Cases","500",height*0.15,width*0.47,Colors.black,Colors.black45),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    sumcon("Total Deaths","500",height*0.15,width*0.47,Colors.black,Colors.black45),
                    sumcon("New Deaths","500",height*0.15,width*0.47,Colors.black,Colors.black45),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    sumcon("Total Recovered","500",height*0.15,width*0.47,Colors.black,Colors.black45),
                    sumcon("Critical Cases","500",height*0.15,width*0.47,Colors.black,Colors.black45),
                  ],
                ),
                WebView(
                  initialUrl: Uri.dataFromString('<html><body><iframe style="width:100%"; width="560" height="380" src="https://coronavirus.app/map?mode=infected&embed=true" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></body></html>', mimeType: 'text/html').toString(),
                  javascriptMode: JavascriptMode.unrestricted,
                )
              ],)));

  }}


  Widget sumcon(num,text,height,width,tc1,tc2)  => Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(35),
        ),
        border: Border.all(
          color: Colors.redAccent, //                   <--- border color
          width: 3.0,
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: tc1,
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
              Text(num,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: tc2,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              )
            ],
          ),
        ),
      ),
    );

