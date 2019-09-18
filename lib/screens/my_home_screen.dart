import 'package:flutter/material.dart';
import 'package:kurs_app/screens/kurs_beschreibung_screen.dart';

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
      "Leonhard Hoffstetter",
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
        child: Column(
          children: <Widget>[
            Container(
              height: 500,
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
            RaisedButton(
              onPressed: (){
                Navigator.of(context).push(_createRoute());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Transition", style: TextStyle(fontSize: 20.0)),
              ),
            )
          ],
        ),
      ),
    );
  }


  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => KursBeschreibungScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
