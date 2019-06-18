import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Dialog Demo');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                _showDialog(context);
              },
              child: Container(
                width: 250.0,
                child: Center(
                  child: Text(
                    'Material风格的AlertDialog',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                _showSimpleDialog(context);
              },
              child: Container(
                width: 250.0,
                child: Center(
                  child: Text(
                    'SimpleDialog',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                //Dialog 点击按钮返回值
                _showIOSDialog(context).then((value) {
                  print("对话框消失:$value");
                });
              },
              child: Container(
                width: 250.0,
                child: Center(
                  child: Text(
                    'IOS风格的AlertDialog',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                _showMyDialogWithColumn(context).then((val) {
                  print(val);
                });
              },
              child: Container(
                width: 250.0,
                child: Center(
                  child: Text(
                    '列表项对话框',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                _showMyDialogWithStateBuilder(context);
              },
              child: Container(
                width: 250.0,
                child: Center(
                  child: Text(
                    'StatefulWidget',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                _showMyCustomLoadingDialog(context);
              },
              child: Container(
                width: 250.0,
                child: Center(
                  child: Text(
                    '自定义',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text('提示'),
              content: Text('这是一个Dialog！'),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('取消')),
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('确定'))
              ],
            ));
  }

  _showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('SimpleDialog'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("SimpleDialogOption One"),
                onPressed: () {
                  Navigator.of(context).pop("SimpleDialogOption One");
                },
              ),
              SimpleDialogOption(
                child: Text("SimpleDialogOption Two"),
                onPressed: () {
                  Navigator.of(context).pop("SimpleDialogOption Two");
                },
              ),
              SimpleDialogOption(
                child: Text("SimpleDialogOption Three"),
                onPressed: () {
                  Navigator.of(context).pop("SimpleDialogOption Three");
                },
              ),
            ],
          );
        });
  }

  Future _showIOSDialog(BuildContext context) {
    return showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("title"),
            content: Text("内容内容内容内容内容内容内容内容内容内容内容"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop("点击了确定");
                },
                child: Text("确认"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop("点击了取消");
                },
                child: Text("取消"),
              ),
            ],
          );
        });
  }

  Future _showMyDialogWithColumn(BuildContext context) {
    var index = -1;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("title"),
            content: Container(
              height: 200,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        index = 1;
                      },
                      child: SizedBox(
                        child: Text("1"),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    GestureDetector(
                      onTap: () {
                        index = 2;
                      },
                      child: SizedBox(
                        child: Text("2"),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    GestureDetector(
                      onTap: () {
                        index = 3;
                      },
                      child: SizedBox(
                        child: Text("3"),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    GestureDetector(
                      onTap: () {
                        index = 4;
                      },
                      child: SizedBox(
                        child: Text("4"),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(index);
                },
                child: Text("确认"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(-1);
                },
                child: Text("取消"),
              ),
            ],
          );
        });
  }

  void _showMyDialogWithStateBuilder(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("StatefulBuilder"),
          content: StatefulBuilder(builder: (context, StateSetter setState) {
            return Container(
              child: CheckboxListTile(
                  title: Text("选项"),
                  value: selected,
                  onChanged: (bool) {
                    setState(() {
                      selected = !selected;
                    });
                  }),
            );
          }),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  selected = false;
                },
                child: Text('取消')),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  print("结果$selected");
                  selected = false;
                },
                child: Text('确定'))
          ],
        );
      },
    );
  }

  void _showMyCustomLoadingDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return MyCustomLoadingDialog();
        });
  }
}

class MyCustomLoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Duration insetAnimationDuration = const Duration(milliseconds: 100);
    Curve insetAnimationCurve = Curves.decelerate;

    RoundedRectangleBorder _defaultDialogShape = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)));

    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets +
          const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      duration: insetAnimationDuration,
      curve: insetAnimationCurve,
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: Center(
          child: SizedBox(
            width: 120,
            height: 120,
            child: Material(
              elevation: 24.0,
              //dialog背景颜色
              color: Color(0x88000000),
              type: MaterialType.card,
              //在这里修改成我们想要显示的widget就行了，外部的属性跟其他Dialog保持一致
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                    //圆圈颜色控制
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "加载中",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              shape: _defaultDialogShape,
            ),
          ),
        ),
      ),
    );
  }
}
