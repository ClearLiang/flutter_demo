import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _check;
  bool _check1;
  bool _check2;

  @override
  void initState() {
    _check = false;
    _check1 = false;
    _check2 = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CheckBox Demo"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(),
              Text("ListTile 单选项"),
              ListTile(
                leading: Icon(Icons.add),
                title: Text("我是一个选项"),
                onTap: () {
                  setState(() {
                    _check = !_check;
                  });
                },
                trailing: Checkbox(
                  value: this._check,
                  onChanged: (value) {
                    setState(() {
                      _check = value;
                    });
                  },
                  activeColor: Colors.lightBlue,
                ),
              ),
              Divider(),
              Text("CheckboxListTile 单选项"),
              CheckboxListTile(
                value: this._check1,
                onChanged: (value1) {
                  setState(() {
                    _check1 = !_check1;
                  });
                },
                activeColor: Colors.greenAccent,
                title: Text("我是一个Title"),
                subtitle: Text("我是一个SubTitle"),
                secondary: Icon(Icons.add),
                selected: this._check1, //连带整个Tile变为greenAccent
              ),
              Divider(),
              Text("GestureDetector + Row + Checkbox 单选项"),
              GestureDetector(
                child: Row(
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 20, 0),
                      child: Icon(Icons.add),
                    ),
                    Expanded(child: Text("我是一个 Text 文本"),),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child: Checkbox(
                        value: this._check2,
                        onChanged: (value) {
                          setState(() {
                            _check2 = value;
                          });
                        },
                        activeColor: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
                onTap: (){
                  setState(() {
                    _check2 = !_check2;
                  });
                },
              ),

            ],
          ),
        ));
  }
}
/*


* */
