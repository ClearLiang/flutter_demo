import 'package:flutter/material.dart';
import 'package:vp_flutter/datas/asset.dart';

class DecoratedBoxDemo extends StatefulWidget {
  @override
  _DecoratedBoxDemoState createState() => _DecoratedBoxDemoState();
}

class _DecoratedBoxDemoState extends State<DecoratedBoxDemo> {
  String imgUrl = "";

  @override
  void initState() {
    super.initState();
    imgUrl = "http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBox Demo"),
      ),
      body: Column(
        children: <Widget>[
          Divider(),
          Container(
            width: 200.0,
            height: 150.0,
            alignment: Alignment.center,
            child: Container(
              color: Colors.transparent,
              child: Text("图片背景", style: TextStyle(color: Colors.white)),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.deepPurple),
              image: DecorationImage(
                image: NetworkImage(imgUrl2),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          Divider(),
          Container(
            width: 200.0,
            height: 150.0,
            alignment: Alignment.center,
            child: Container(color: Colors.transparent, child: Text("渐变色背景")),
            decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.deepPurple),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                  Colors.green,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
