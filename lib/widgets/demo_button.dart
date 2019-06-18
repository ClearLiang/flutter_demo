import 'package:flutter/material.dart';
import 'package:vp_flutter/plugin/utils.dart';

class ButtonDemo extends StatefulWidget {
  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Demo"),
      ),
      body: ListView(
        children: <Widget>[
          Divider(height: 25.0),
          Text("FlatButton"),
          Text("一个扁平的Material按钮"),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child: FlatButton(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "FlatButton",
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                print("onPressed");
              },
              //onPressed: null,//禁用
              color: Colors.blue,
              textColor: Colors.orange,
              onHighlightChanged: (value) {
                print("onHighlightChanged：$value");
              },
              disabledColor: Colors.grey,
              disabledTextColor: Colors.white,
              splashColor: Colors.red,
            ),
          ),
          Divider(height: 25.0),
          Text("FloatingActionButton"),
          Text("一个圆形图标按钮，它悬停在内容之上"),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child: FloatingActionButton(
              child: Icon(
                Icons.print,
                size: 35.0,
              ),
              onPressed: () {
                Utils.showLog("打印文本");
                Utils.showToast(context, "一个圆形图标按钮，它悬停在内容之上1111我111111a111我1111我");
              },
              tooltip: "打印文本",
            ),
          ),
        ],
      ),
    );
  }
}
