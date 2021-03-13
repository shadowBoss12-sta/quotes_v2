import 'package:flutter/material.dart';
import 'package:quotev2/pages/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC Quote',
      home:HomeScreen()

    );
  }
}
