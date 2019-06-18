import 'package:flutter/material.dart';

/// 带下拉内容的tile

class ExpansionTileDemo extends StatefulWidget {
  @override
  _ExpansionTileDemoState createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expansion Tile Demo",
        ),
      ),
      body: Container(
        child: ExpansionTile(
          title: Text("分类"),
          leading: Icon(Icons.class_),
          backgroundColor: Colors.white10,
          //打开时的背景颜色
          initiallyExpanded: false,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("苹果");
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: ListTile(
                  title: Text("苹果"),
                  subtitle: Text(
                    "又大又红",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("西瓜");
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
                child: ListTile(
                  title: Text("西瓜"),
                  subtitle: Text(
                    "又圆又绿",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("香蕉");
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.yellow,
                child: ListTile(
                  title: Text("香蕉"),
                  subtitle: Text(
                    "又长又黄",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
