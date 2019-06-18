import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  final String _title;
  final bool _showBar;

  EachView(this._title, this._showBar);

  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    if (!widget._showBar) {
      return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey,
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (buildContext) {
                  return EachView("又打开一个", true);
                }));
              },
              child: Text(widget._title),
            ),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
        elevation: 0, //appbar下面的阴影设置
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (buildContext) {
                return EachView("又打开一个", true);
              }));
            },
            child: Text(widget._title),
          ),
        ),
      ),
    );
  }
}
