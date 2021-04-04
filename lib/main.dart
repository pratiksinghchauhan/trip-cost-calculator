import 'package:flutter/material.dart';
import 'ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Trip Cost App",
      home: new HelloYou(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}
