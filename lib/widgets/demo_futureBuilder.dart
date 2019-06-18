import 'package:flutter/material.dart';
import 'package:vp_flutter/datas/asset.dart';
import 'package:vp_flutter/plugin/netUtil.dart';

class FutureBuilderDemo extends StatefulWidget {
  @override
  _FutureBuilderDemoState createState() => _FutureBuilderDemoState();
}

class _FutureBuilderDemoState extends State<FutureBuilderDemo> {
  Future _getData() async {
    var response = NetUtil.getHttp(user1);
    return response;
  }

  Widget _buildFuture(BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    // snapshot 就是 _calculation 在时间轴上执行过程的状态快照
    switch (snapshot.connectionState) {
      case ConnectionState.none:
        return Text('Press button to start'); //如果 _calculation 未执行则提示：请点击开始
      case ConnectionState.waiting:
        return Text('Awaiting result...'); //如果 _calculation 正在执行则提示：加载中
      default: //如果_calculation执行完毕
        if (snapshot.hasError) {
          //若 _calculation 执行出现异常
          return Text('Error: ${snapshot.error}');
        } else {
          return Text('Result: ${snapshot.data}');
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder Demo"),
      ),
      body: Column(
        children: <Widget>[
          //FutureBuilder控件
          FutureBuilder<dynamic>(
            future: _getData(), // 用户定义的需要异步执行的代码，类型为Future<String>或者null的变量或函数
            builder: _buildFuture,
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                NetUtil.getHttp(user1).then((response) {
                  print(response.data);
                });
              },
              child: Text("获取数据"),
            ),
          ),
        ],
      ),
    );
  }
}
