import 'package:flutter/material.dart';

class Component extends StatefulWidget {

  var text;

  Component(_text) {
    text = _text;
  }

  @override
  _ComponentState createState() => _ComponentState(text);
}

class _ComponentState extends State<Component> {

  int count = 0;
  String text;

  _ComponentState(_text) {
    text = _text;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(text + " " + count.toString()),
        MaterialButton(
          color: Colors.red,
          onPressed: pressButton,
        )
      ],
    );
  }

  void pressButton() {
    setState(() {
      count++;
    });
  }
}