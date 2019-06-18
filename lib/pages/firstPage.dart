import 'package:flutter/material.dart';
import 'package:vp_flutter/pages/eachView.dart';
import 'package:vp_flutter/plugin/pluginUtil.dart';

/*
* 与原生交互的界面
* */

class FirstPage extends StatelessWidget {
  final Map<String, dynamic> params;

  FirstPage({Key key, this.params}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstPage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(params: params),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Map<String, dynamic> params;

  MyHomePage({Key key, this.params}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState(params: params);
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, dynamic> params;

  _MyHomePageState({Key key, this.params});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '收到的参数：name = ${params["name"]}，age = ${params["age"]}',
            ),
            GestureDetector(
              onTap: () {
                PluginUtil.getInstance()
                    .startFlutter(context, new EachView("New Page", true));
              },
              child: Text(
                "跳转新的 Flutter Page",
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            GestureDetector(
              onTap: () {
                PluginUtil.getInstance().startActivity("FirstActivity");
              },
              child: Text(
                "跳转 Native Activity",
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            GestureDetector(
              onTap: () {
                PluginUtil.getInstance().sendBasicMessage("我是flutter信息");
              },
              child: Text(
                "Basic 发送",
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            GestureDetector(
              onTap: () {
                PluginUtil.getInstance().sendMethodMessage("我是flutter信息");
              },
              child: Text(
                "Method 发送",
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
