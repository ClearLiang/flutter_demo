import 'package:flutter/material.dart';

class DismissibleDemo extends StatefulWidget {
  @override
  _DismissibleDemoState createState() => _DismissibleDemoState();
}

class _DismissibleDemoState extends State<DismissibleDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible Demo"),
      ),
      body: MyContent(),
    );
  }
}

class MyContent extends StatelessWidget {
  final items = new List<String>.generate(1, (i) => "Item ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text("Button dismissed")));
          },
          child: Text("弹出"),
        ),
        Dismissible(
          key: Key("1"),
          onDismissed: (direction) {
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("ListTile dismissed")));
          },
          background: Container(color: Colors.red),
          child: ListTile(title: Text('第一ListTile')),
        ),
      ],
    );
  }
}

/*
new ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    final item = items[index];

    return Dismissible(
      key: Key(item),
      onDismissed: (direction) {
        items.removeAt(index);
        Scaffold.of(context).showSnackBar(SnackBar(content: new Text("$item dismissed")));
      },
      background: Container(color: Colors.red),
      child: ListTile(title: new Text('$item')),
    );
  }
),
* */
