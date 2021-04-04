import 'package:flutter/material.dart';

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String name = '';
  final _currencies = ["Dollars", "Euro", "Pounds"];
  String _currency = "Dollars";
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
              DropdownButton<String>(
                items: _currencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _currency,
                onChanged: (String value) {
                  _onDropdownChanged(value);
                  print(value);
                },
              ),
              Text("Hello " + name + "!")
            ],
          ),
        ));
  }

  _onDropdownChanged(String value) {
    setState(() {
      this._currency = value;
    });
  }
}
