import 'package:flutter/material.dart';

class AppbarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_backspace),
        backgroundColor: Colors.blue,
        title: Text(
          "AppBar Demo",
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
          IconButton(icon: Icon(Icons.add_alarm), onPressed: () {}),
        ],
        bottom: PreferredSize(
          child: Text("app bar bottom"),
          preferredSize: Size(20, 20),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppBar(
            title: Text("默认"),
          ),
          Divider(),
          AppBar(
            leading: Icon(null),
            title: Text("只有标题"),
          ),

        ],
      ),
    );
  }
}
