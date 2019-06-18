import 'package:flutter/material.dart';


/// 网格布局

class GridViewLayout extends StatefulWidget {
  @override
  _GridViewLayoutState createState() => _GridViewLayoutState();
}

class _GridViewLayoutState extends State<GridViewLayout> {
  List<Widget> list;

  @override
  void initState() {
    super.initState();
    list = new List()..add(buildAddButton());
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.grey,
        child: Center(
          child: Text(
            "添加",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return GestureDetector(
      onTap: () {
        if (list.length > 1) {
          setState(() {
            list.removeAt(0);
          });
        }
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.yellow,
        child: Center(
          child: Text("图片"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grid Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid Demo"),
        ),
        body: new GridView.builder(
          // 必须是builder的方式才能动态添加
          // SliverGridDelegateWithFixedCrossAxisCount  可以直接指定每行（列）显示多少个Item
          // SliverGridDelegateWithMaxCrossAxisExtent   会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
          /*gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing:10.0,
            mainAxisSpacing: 10.0,
            maxCrossAxisExtent: 100.0,
          ),*/
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0,//child长宽比
          ),
          itemBuilder: (BuildContext context, int index) {
            return list[index];
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}
