import 'package:flutter/material.dart';
import 'package:vp_flutter/datas/asset_widgets.dart';

/// 带下拉的列表

class ExpansionListDemo extends StatefulWidget {
  @override
  _ExpansionListDemoState createState() => _ExpansionListDemoState();
}

class _ExpansionListDemoState extends State<ExpansionListDemo> with WidgetsBindingObserver{
  var currentPanelIndex = -1; // -1默认全部闭合
  List<int> mList;
  List<User> usersList;


  _ExpansionListDemoState(){
   print("构造函数");
  }

  @override
  void initState() {
    super.initState();
    print("initState");
    mList = List();
    usersList = List();

    usersList.clear();
    usersList.addAll(userList);
    for (int i = 0; i < usersList.length; i++) {
      mList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Sample'),
      ),
      body: ListView(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              setState(() {
                usersList.add(User("新加的-${mList.length + 1}", 55));
                mList.add(mList.length);
              });
            },
            child: Text('添加数据',style: TextStyle(color: Colors.pink),),
          ),
          _expansionPanelList(),
        ],
      ),
    );
  }

  Widget _expansionPanelList(){
    return ExpansionPanelList(
      animationDuration: Duration(milliseconds: 500),
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          currentPanelIndex =
          (currentPanelIndex != panelIndex) ? panelIndex : -1;
        });
      },
      children: mList.map((i) {
        return ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text('name - ${usersList[i].name}'),
            );
          },
          body: Padding(
            padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
            child: ListBody(
              children: <Widget>[
                Text('age - ${usersList[i].age}'),
              ],
            ),
          ),
          isExpanded: currentPanelIndex == i,
        );
      }).toList(),
    );
  }

}
