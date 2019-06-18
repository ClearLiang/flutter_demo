import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Demo"),
      ),
      drawer: HomeBuilder.homeDrawer(context),
      body: Text("我是一个界面"),
    );
  }
}

class HomeBuilder {
  static Widget homeDrawer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-50,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          _drawerHeader(context),
          Container(
            height: MediaQuery.of(context).size.height - 184,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ClipRect(
                    child: ListTile(
                      leading: CircleAvatar(child: Text("A")),
                      title: Text('Drawer item A'),
                      onTap: () => {},
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Text("B")),
                    title: Text('Drawer item B'),
                    subtitle: Text("Drawer item B subtitle"),
                    onTap: () => {},
                  ),
                  AboutListTile(
                    icon: CircleAvatar(child: Text("Ab")),
                    child: Text("About"),
                    applicationName: "Test",
                    applicationVersion: "1.0",
                    applicationIcon: Image.asset(
                      "images/ymj_jiayou.gif",
                      width: 64.0,
                      height: 64.0,
                    ),
                    applicationLegalese: "applicationLegalese",
                    aboutBoxChildren: <Widget>[
                      Text("BoxChildren"),
                      Text("box child 2")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _drawerHeader(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.only(),
      margin: EdgeInsets.only(),
      child: Container(
        margin: EdgeInsets.only(),
        height: 200,
        width: MediaQuery.of(context).size.width,
        color: Colors.greenAccent,
        child: Text("I'm Tom"),
      ),
    );
  }
}
