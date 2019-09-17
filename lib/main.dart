import 'package:flutter/material.dart';

import 'screens/my_home_screen.dart';
import 'screens/teilnehmer/amy_farrah_fowler_screen.dart';
import 'screens/teilnehmer/bruce_wayne_screen.dart';
import 'screens/teilnehmer/leonhard_hoffstetter_screen.dart';
import 'screens/teilnehmer/milde_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KursApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "Jan-Torsten Milde": (context) => MildeScreen(),
        "Amy Farrah Fowler": (context) => AmyFarrahFowlerScreen(),
        "Bruce Wayne": (context) => BruceWayneScreen(),
        "Leonhard Hoffstetter": (context) => LeonhardHoffstetterScreen(),
      },
      home: MyHomeScreen(title: 'Kursseite'),
    );
  }
}
