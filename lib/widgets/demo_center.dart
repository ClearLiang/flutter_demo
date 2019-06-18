import 'package:flutter/material.dart';

class CenterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Center Demo"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.grey,
            child: Center(
              widthFactor: 2.0,
              heightFactor: 1.0,
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.lightGreen,
              ),
            ),
          ),
          Text("未设置 widthFactor 和 heightFactor "),
          Text("设置外层 Container 的宽高"),
          Divider(),
          Container(
            color: Colors.deepPurpleAccent,
            child: Center(
              widthFactor: 2.0,
              heightFactor: 2.0,
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.lightGreen,
              ),
            ),
          ),
          Text("设置了 widthFactor=2 和 heightFactor=2 "),
          Text("未设置外层 Container 的宽高"),
        ],
      ),
    );
  }
}
