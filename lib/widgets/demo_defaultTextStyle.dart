import 'package:flutter/material.dart';

class DefaultTextStyleDemo extends StatefulWidget {
  @override
  _DefaultTextStyleDemoState createState() => _DefaultTextStyleDemoState();
}

class _DefaultTextStyleDemoState extends State<DefaultTextStyleDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DefaultTextStyle Demo"),
      ),
      body: DefaultTextStyle(
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 25,
        ),
        child: Text("我是一段文本"),
      ),
    );
  }
}
