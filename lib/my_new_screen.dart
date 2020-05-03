import 'package:flutter/material.dart';

class MyNewScreen extends StatefulWidget {
  final String text;
  MyNewScreen(this.text);

  @override
  _MyNewScreenState createState() => _MyNewScreenState();
}

class _MyNewScreenState extends State<MyNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New screen'),
      ),
      body: Center(
        child: Text(widget.text),
      ),
    );
  }
}