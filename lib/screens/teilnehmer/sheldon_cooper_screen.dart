import 'package:flutter/material.dart';

class SheldonCooperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Dr. Dr. Sheldon Cooper")),
        body: Container(
            color: Colors.white,
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(100, (index) {
                return Center(
                  child: Image.network(
                      "https://i0.web.de/image/568/32000568,pd=2/sheldon-cooper-jim-parsons-the-big-bang-theory.jpg"),
                );
              }),
            )));
  }
}
