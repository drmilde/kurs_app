import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  List<String> _namen;

  @override
  void initState() {
    super.initState();

    _namen = [
      "Jan-Torsten Milde",
      "Amy Farrah Fowler",
      "Bruce Wayne",
      "Leonard Hofstaedter",
      "Sheldon Cooper",
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
          itemCount: _namen.length,
          itemBuilder: (context, index) => new ListTile(
            title: Text(
              _namen[index],
              style: TextStyle(fontSize: 30.0),
            ),
            onTap: () {
              Navigator.pushNamed(context, _namen[index]);
            },
          ),
        ),
      ),
    );
  }
}
