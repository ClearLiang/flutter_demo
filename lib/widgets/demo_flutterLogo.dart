import 'package:flutter/material.dart';

class FlutterLogoDemo extends StatefulWidget {
  @override
  _FlutterLogoDemoState createState() => _FlutterLogoDemoState();
}

class _FlutterLogoDemoState extends State<FlutterLogoDemo> {
  var _status = 0;
  var _text = "";

  clickedToChangeStatus() {
    setState(() {
      _status = (_status + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FlutterLogoStyle style = FlutterLogoStyle.markOnly;
    _text = "只有图标";
    if (_status == 1) {
      style = FlutterLogoStyle.horizontal;
      _text = "图标右边显示文字";
    } else if (_status == 2) {
      style = FlutterLogoStyle.stacked;
      _text = "图标下边显示文字";
    }
    return Scaffold(
      appBar: AppBar(title: Text("FlutterLogo Demo"),),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 30.0,
                bottom: 30.0,
              ),
              child: RaisedButton(
                onPressed: this.clickedToChangeStatus,
                color: Colors.green,
                child: Text('Change Status'),
              ),
            ),
            Text(_text,style: TextStyle(fontSize: 25),),
            FlutterLogo(
              size: 100.0,
              colors: Colors.red,
              // 图的颜色
              textColor: Colors.orange,
              // 只对带文字的style起作用
              // style: FlutterLogoStyle.markOnly,  // 只有图
              style: style,
              // 左图右文
              // style: FlutterLogoStyle.stacked,  // 上图下文
              duration: new Duration(
                // 当colors、textColor或者style变化的时候起作用
                seconds: 3,
              ),
              curve: Curves.elasticOut, // 动画方式
            )
          ],
        ),
      ),
    );
  }
}
