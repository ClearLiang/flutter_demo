import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox Demo"),
      ),
      body: ConstrainedBox(
        //constraints: BoxConstraints(maxWidth: 300.0,maxHeight: 200.0,minHeight: 100.0,minWidth: 100.0),
        //constraints: BoxConstraints.expand(),
        constraints: BoxConstraints.tightForFinite(width: 300.0, height: 200.0),
        child: Card(child: Text('Hello World!')),
      ),
    );
  }
}
