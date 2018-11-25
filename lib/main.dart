import 'package:flutter/material.dart';
import 'package:flutter_test_app/component.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  List<String> items = ["One","Two","Three", "Four"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, i) {
              return Component(items[i]);
            }
        ),
      )
    );
  }
}


