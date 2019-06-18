import 'package:flutter/material.dart';


/// 高效处理布局


class FlowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flow Demo"),
      ),
      body: Container(
        color: Colors.grey,
        child: Flow(
          delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
          children: <Widget>[
            new Container(color: Colors.red),
            new Container(color: Colors.yellow),
            new Container(color: Colors.green),
            new Container(color: Colors.blue),
            new Container(color: Colors.lightBlue),
            new Container(color: Colors.black),
            new Container(color: Colors.blueGrey),
            new Container(color: Colors.brown),
            new Container(color: Colors.black12),
          ],
        ),
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({this.margin});

  //不是在布局期间定位子项，而是使用FlowDelegate.paintChildren函数中的矩阵在绘制阶段使用变换矩阵定位子项。
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)
        context.paintChild(i,
            transform: Matrix4.translationValues(x, y, 0.0) //位移
            );
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    // 设置每个child大小
    return BoxConstraints(
        maxHeight: 80, maxWidth: 80, minHeight: 80, minWidth: 80);
  }

  @override
  Size getSize(BoxConstraints constraints) {
    // 设置Flow宽高
    return Size(double.infinity, double.infinity);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
