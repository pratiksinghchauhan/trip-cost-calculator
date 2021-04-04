import 'package:flutter/material.dart';

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                decoration:
                    InputDecoration(hintText: "Please insert your name"),
                onChanged: (String string) {
                  setState(() {
                    name = string;
                  });
                },
              ),
              Text("Hello " + name + "!")
            ],
          ),
        ));
  }
}
