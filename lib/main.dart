import 'package:flutter/material.dart';
import 'screens/temples_screen.dart';

void main() {
  runApp(TempleApp());
}

class TempleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temple App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: TempleScreen(),
    );
  }
}
