import 'package:flutter/material.dart';

/// quadraticBezier
/// 二次贝赛尔曲线
/// clipHeight：曲线下弯或者上弯的程度，默认50.0
/// clipCount：弯形状的个数，默认1

class BesselCurve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //这里和跳转页面都需要设置（即新的页面也要设置一次）
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "曲线Clip",
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: ClipPath(
              clipper: BottomClipper(clipHeight: 15.0,clipCount: 9),
              child: Container(
                color: Colors.blue,
                height: 200.0,
              ),
            ),
            color: Colors.grey,
          ),
        ],
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
      var firstControlPoint = Offset(size.width / (clipCount * 2) * _downCount, size.height - (i % 2) * 2 * clipHeight); //控制点
      _downCount++;
      var firstEndPoint = Offset(size.width / (clipCount * 2) * _downCount, size.height - clipHeight); //结束点
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
