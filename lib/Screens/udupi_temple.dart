// lib/Screens/udupi_template.dart
import 'package:flutter/material.dart';
import '../widgets/temple_app_bar.dart'; // Import your custom app bar

class UdupiTempleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TempleAppBar(title: 'Udupi Sri Krishna Temple'),
      body: Center(
        child: Text('Content goes here'), // Replace with actual content
      ),
    );
  }
}
