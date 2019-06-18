import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Demo"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Text("项目一"),
            Divider(),
            Text("项目二"),
            Divider(),
            Text("项目三"),
            Divider(),
            Text("项目四"),
            Divider(),
            Text("项目五"),
            Divider(),
            Text("项目六"),
            Divider(),
            Text("项目七"),
            Divider(),
            Text("项目八"),
            Divider(),
            Text("项目九"),
            Divider(),
            Text("项目十"),
          ],
        ),
      ),
    );
  }
}
