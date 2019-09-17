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
                height: 200,
                width: 200,
                //width: double.infinity,
                color: Colors.deepOrange,
                child: Center(
                    child: Text(
                  "Klicken",
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                )),
              ),
            ),
          ),
        ));
  }
}
