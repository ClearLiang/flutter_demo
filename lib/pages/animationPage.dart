import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vp_flutter/datas/asset_animation.dart';
import 'package:vp_flutter/plugin/pluginUtil.dart';

class AnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AnimationPage Widget Demo",
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
