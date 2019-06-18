import 'package:flutter/material.dart';
import 'package:vp_flutter/datas/asset.dart';
import 'package:vp_flutter/plugin/pluginUtil.dart';


class WidgetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget List ',
      debugShowCheckedModeBanner: false,
      home: _WidgetList(),
    );
  }
}

class _WidgetList extends StatefulWidget {
  @override
  createState() => new _WidgetListState();
}

class _WidgetListState extends State<_WidgetList> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget List'),
      ),
      body: MyList(),
    );
  }

}

class MyList extends StatelessWidget {
  final List<String> _nameList = listName;
  final List<Widget> _widgetList = listPage;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _nameList.length,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.menu),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  PluginUtil.getInstance().startFlutter(context, _widgetList[index]);
                },
                title: Text(_nameList[index]),
              ),
              Divider(),
            ],
          ),
        );
      },
    );
  }
}


