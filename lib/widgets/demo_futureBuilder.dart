import 'package:flutter/material.dart';
import 'package:vp_flutter/datas/asset.dart';
import 'package:vp_flutter/plugin/netUtil.dart';

class FutureBuilderDemo extends StatefulWidget {
  @override
  _FutureBuilderDemoState createState() => _FutureBuilderDemoState();
}

class _FutureBuilderDemoState extends State<FutureBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder Demo"),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () {
            NetUtil.getHttp(user1).then((response){
              print(response.data);
            });
          },
          child: Text("获取数据"),
        ),
      ),
      /*FutureBuilder<String>(
        //FutureBuilder控件
        future: _getData(), // 用户定义的需要异步执行的代码，类型为Future<String>或者null的变量或函数
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          //snapshot就是_calculation在时间轴上执行过程的状态快照
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return new Text(
                  'Press button to start'); //如果_calculation未执行则提示：请点击开始
            case ConnectionState.waiting:
              return new Text('Awaiting result...'); //如果_calculation正在执行则提示：加载中
            default: //如果_calculation执行完毕
              if (snapshot.hasError) //若_calculation执行出现异常
                return new Text('Error: ${snapshot.error}');
              else //若_calculation执行正常完成
                return new Text('Result: ${snapshot.data}');
          }
        },
      ),*/
    );
  }
}

