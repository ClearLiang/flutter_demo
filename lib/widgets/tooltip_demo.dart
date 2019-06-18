import 'package:flutter/material.dart';

/// 轻量级提示，可以与列表等进行组合提示

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new _TooltipDemo(),
    );
  }
}

class _TooltipDemo extends StatefulWidget {
  @override
  createState() => new _TooltipDemoState();
}

class _TooltipDemoState extends State<_TooltipDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          Tooltip(
            message: "我是一个Tooltip",
            child: IconButton(
              icon: Icon(Icons.list),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Center(
        child: Tooltip(
          message: "我是message",
          child: Text(
            "一个模板Dart",
          ),
        ),
      ),
    );
  }
}
