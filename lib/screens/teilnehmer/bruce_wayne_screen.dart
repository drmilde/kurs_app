import 'package:flutter/material.dart';

class BruceWayneScreen extends StatefulWidget {
  @override
  _BruceWayneScreenState createState() => _BruceWayneScreenState();
}

class _BruceWayneScreenState extends State<BruceWayneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Bruce Wayne"),
        ),
        body: Container(
          height: 300,
          width: double.infinity,
          child: InkWell(
            splashColor: Colors.white,
            focusColor: Colors.cyan,
            highlightColor: Colors.yellow,
            onTap: () {},
            child: Center(
              child: Container(
                height: 500,
                //width: 200,
                width: double.infinity,
                color: Colors.deepOrange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width:300,
                      child: Image.network(
                          "https://cdn1.spiegel.de/images/image-1257544-860_poster_16x9-ztsp-1257544.jpg"),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Center(
                        child: Text(
                      "I am Batman",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
