import 'package:flutter/material.dart';

class LeonhardHoffstetterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Leonhard Hoffstetter"),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              child: ListTile(
                onTap: () {
                  print(index.toString());
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("${index}"),
                    Container(
                      height: 100,
                      child: Image.network(
                          "https://imgs.chip.de/mMeEG6HixPcdcPgzOtQmEg6BefE=/618x0/filters:format(jpeg):fill(fff,true)/www.chip.de%2Fii%2F8%2F7%2F2%2F6%2F6%2F2%2F7%2F9%2F1168b2807b277c3d.jpeg"),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
