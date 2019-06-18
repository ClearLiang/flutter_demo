import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final Map<String,dynamic> params;

  SecondPage({Key key, this.params}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second Flutter Page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Page"),
        ),
        body: Center(
          child: Text("我是第二个Flutter界面"),
        ),
      ),
    );
  }
}
