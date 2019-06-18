import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vp_flutter/pages/firstPage.dart';
import 'package:vp_flutter/pages/secondPage.dart';
import 'package:vp_flutter/pages/widgetPage.dart';
import 'package:vp_flutter/plugin/netUtil.dart';
import 'package:vp_flutter/plugin/pluginUtil.dart';
import 'package:vp_flutter/widgets/widget_list.dart';

void main() => runApp(MyApp(window.defaultRouteName));

class MyApp extends StatelessWidget {
  final String route;

  MyApp(this.route);

  void initPluginUtil() {
    PluginUtil.getInstance().receiveMethodMessage(); //设置MethodChannel监听
    PluginUtil.getInstance().receiveEventMessage(); //设置EventChannel 监听
    PluginUtil.getInstance().receiveBasicMessage(); //设置BasicChannel 监听
  }

  @override
  Widget build(BuildContext context) {
    //initPluginUtil();
    NetUtil.init();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //这里和跳转页面都需要设置（即新的页面也要设置一次）
      onGenerateRoute: (settings) {
        //print("settings:"+settings.toString());//settings:RouteSettings("route1?msg=test&id=11111", null)
        Uri uri = Uri.parse(settings.name);
        //print("uri:"+uri.toString());//uri:route1?msg=test&id=11111
        String route = uri.path;
        //print("route:"+route.toString());//route:route1
        Map<String, String> param = uri.queryParameters;
        print("route:" + route);
        switch (route) {
          case '/':
            return MaterialPageRoute(builder: (context) => WidgetList());
          case 'route1':
            return MaterialPageRoute(
                builder: (context) => FirstPage(
                      params: param,
                    ));
          case 'route2':
            return MaterialPageRoute(
                builder: (context) => SecondPage(
                      params: param,
                    ));
          default:
            return MaterialPageRoute(builder: (context) => WidgetPage());
        }
      },
    );
  }
}
