import 'package:flutter/material.dart';
import 'package:vp_flutter/datas/asset_dependencies.dart';
import 'package:vp_flutter/plugin/pluginUtil.dart';

class DependenciesPage extends StatefulWidget {
  @override
  _DependenciesPageState createState() => _DependenciesPageState();
}

class _DependenciesPageState extends State<DependenciesPage> {
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