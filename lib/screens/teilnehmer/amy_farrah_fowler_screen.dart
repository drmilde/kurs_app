import 'package:flutter/material.dart';

class AmyFarrahFowlerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text("Amy Farrah Fowler")),
        body: Center(
          child: Container(
            color: Colors.deepOrange,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.grey,
                  height: 200,
                  child: Image.network(
                      "https://wwwimage-secure.cbsstatic.com/base/files/tbbt-amy.jpg"),
                ),
                SizedBox(height: 20),
                Text(
                  "Amy Farrah Fowler",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "arial"),
                ),
              ],
            ),
          ),
        ));
  }
}
