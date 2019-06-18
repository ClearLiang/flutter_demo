import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormDemo extends StatefulWidget {
  FormDemo({Key key}) : super(key: key);

  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  //控制器
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode secondTextFieldNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              child: Text(
                "TextField 展示",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: usernameController,
                onTap: () {
                  print("准备输入");
                },
                /*onChanged: (value) {
                  print("改变:$value");
                },*/
                onSubmitted: (value) {
                  print("提交:$value");
                },
                onEditingComplete: () {
                  FocusScope.of(context).requestFocus(secondTextFieldNode);
                },
                autocorrect: false,
                autofocus: false,
                enabled: true,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
                maxLength: 10,
                keyboardType: TextInputType.text,
                maxLines: 1,
                maxLengthEnforced: false,
                obscureText: false,
                style: TextStyle(
                  color: Colors.red,
                ),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  labelText: "用户名",
                  //icon: Icon(Icons.people),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      onUserNameClear();
                      print("已清除");
                    },
                    child: Icon(Icons.clear),
                  ),
                  helperText: "限制输入十个字",
                  hintText: "请输入用户名",
                  //prefixText: "www.",
                  //suffixText: ".com",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                focusNode: secondTextFieldNode,
                controller: passwordController,
                onTap: () {
                  print("准备输入");
                },
                /*onChanged: (value) {
                  print("改变:$value");
                },*/
                onSubmitted: (value) {
                  print("提交:$value");
                },
                autocorrect: false,
                autofocus: false,
                enabled: true,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
                maxLength: 10,
                keyboardType: TextInputType.text,
                maxLines: 1,
                maxLengthEnforced: false,
                obscureText: true,
                style: TextStyle(
                  color: Colors.red,
                ),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  labelText: "密码",
                  //icon: Icon(Icons.people),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      onPassWordClear();
                      print("已清除");
                    },
                    child: Icon(Icons.clear),
                  ),
                  helperText: "限制输入十个字",
                  hintText: "请输入密码",
                  //prefixText: "www.",
                  //suffixText: ".com",
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20.0, 5, 20, 5),
              child: RaisedButton(
                onPressed: () {
                  _submit(context);
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              child: Text(
                "Form + TextFormField 展示",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "用户名",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.people),
                        hintText: "请输入用户名",
                        helperText: "用户名长度在6-18字符之间",
                      ),
                      onSaved: (val) => this._name = val,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return '请输入用户名';
                        }
                        if (val.length > 18 || val.length < 6) {
                          return '用户名长度在6-18字符之间';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "密码",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        hintText: "请输入密码",
                        helperText: "密码应为6位字符",
                      ),
                      onSaved: (val) => this._password = val,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return '请输入密码';
                        }
                        if (val.length != 6) {
                          return '密码应为6位字符';
                        }
                        return null;
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {
                            _formKey.currentState.reset();
                            _showMessage('用户名密码已经重置');
                          },
                          child: Text('重置'),
                        ),
                        MaterialButton(
                          onPressed: _onSubmit,
                          child: Text('提交'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 提交
  void _onSubmit() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      _showMessage('用户名是：$_name，密码是：$_password');
    }
  }

  void _submit(BuildContext context) {
    if (usernameController.text == "") {
      print("结果:${usernameController.text}");
      _showMessage("用户名不能为空");
    } else if (passwordController.text == "") {
      print("结果:${passwordController.text}");
      _showMessage("密码不能为空");
    } else {
      print("结果:${usernameController.text},${passwordController.text}");
      _showMessage("登录成功");
    }
  }

  // 展示提示框
  void _showMessage(String val) {
    showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('提示'),
          content: Text('$val'),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                _formKey.currentState.reset();
                Navigator.pop(context);
              },
              child: Text('确定'),
            ),
          ],
        );
      },
    );
  }

  void onUserNameClear() {
    setState(() {
      usernameController.clear();
    });
  }

  void onPassWordClear() {
    setState(() {
      passwordController.clear();
    });
  }
}
