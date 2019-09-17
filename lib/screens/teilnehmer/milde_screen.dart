import 'package:flutter/material.dart';

class MildeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Jan-Torsten"),
        ),
        body: Center(
          child: Container(
              height: 500.0,
              color: Colors.deepOrange,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      child: Image.network(
                          "https://www.hs-fulda.de/typo3temp/_processed_/6/0/csm_Milde_web_02_1b8a428f8f.jpg"),
                    ),
                    new Text(
                      "Jan-Torsten Milde",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0),
                    ),
                  ],
                ),
              )),
        ));
  }
}
