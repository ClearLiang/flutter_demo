import 'package:flutter/material.dart';
import 'package:vp_flutter/datas/asset.dart';

/// 碎片化标签

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip Demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Text("Chip"),
            Chip(
              avatar: Icon(
                Icons.home,
                color: Color(0xff00ff00),
              ),
              label: Text("chip组件"),
              labelStyle: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff333333),
                  fontStyle: FontStyle.italic),
              labelPadding: EdgeInsets.only(left: 3.0),
              deleteIcon: Icon(Icons.delete),
              deleteIconColor: Color(0xffff0000),
              deleteButtonTooltipMessage: "手下留情",
              onDeleted: () {
                print("我删除了");
              },
              backgroundColor: Color(0xfff1f1f1),
              padding: EdgeInsets.all(3.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              materialTapTargetSize: MaterialTapTargetSize.padded,
            ),
            Divider(),
            Text("ClipOval"),
            ClipOval(
              child: Container(
                width: 150.0,
                height: 150.0,
                color: Colors.tealAccent,
              ),
            ),
            Divider(),
            Text("ClipPath"),
            Column(
              children: <Widget>[
                Container(
                  child: ClipPath(
                    clipper: BottomClipper(clipHeight: 15.0, clipCount: 9),
                    child: Container(
                      color: Colors.blue,
                      height: 200.0,
                    ),
                  ),
                  color: Colors.grey,
                ),
              ],
            ),
            Divider(),
            Text("ClipRect"),
            Text("没啥用...."),
            ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 1,
                child: Image.network(imgUrl1),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  final clipHeight;
  final clipCount;

  BottomClipper({this.clipHeight = 50.0, this.clipCount = 1});

  @override
  Path getClip(Size size) {
    //这里的size是ClipPath的child中的控件大小
    var _downCount = 1;
    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height - clipHeight);

    for (int i = 0; i < clipHeight; i++) {
      var firstControlPoint = Offset(size.width / (clipCount * 2) * _downCount,
          size.height - (i % 2) * 2 * clipHeight); //控制点
      _downCount++;
      var firstEndPoint = Offset(size.width / (clipCount * 2) * _downCount,
          size.height - clipHeight); //结束点
      _downCount++;
      path.quadraticBezierTo(
        firstControlPoint.dx,
        firstControlPoint.dy,
        firstEndPoint.dx,
        firstEndPoint.dy,
      );
    }
    path.lineTo(size.width, size.height - clipHeight);

    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
