import 'package:flutter/material.dart';



///
/// 常用于Dialog实现底部按钮的操作。
///
class ButtonBarDemo extends StatefulWidget {
  @override
  _ButtonBarDemoState createState() => _ButtonBarDemoState();
}

class _ButtonBarDemoState extends State<ButtonBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonBar Demo"),
      ),
      body: ButtonBar(
        alignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          RaisedButton(
            child: Text("按钮一"),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("按钮二"),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("按钮三"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
