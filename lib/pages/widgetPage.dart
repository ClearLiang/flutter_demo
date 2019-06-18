import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vp_flutter/datas/asset_widgets.dart';
import 'package:vp_flutter/plugin/pluginUtil.dart';

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Widget Demo",
        ),
      ),
      body: MyList(),
    );
  }
}

class MyList extends StatelessWidget {
  final List<String> _nameList = widgetNameList;
  final List<Widget> _widgetList = widgetList;

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
