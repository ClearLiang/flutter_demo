import 'package:flutter/material.dart';

class AssetBundleDemo extends StatefulWidget {
  @override
  _AssetBundleDemoState createState() => _AssetBundleDemoState();
}

class _AssetBundleDemoState extends State<AssetBundleDemo> {
  String result;

  @override
  void initState() {
    super.initState();
    result = "123";

    DefaultAssetBundle.of(context)
        .loadString("assets/person.json")
        .then((value) {
      print(value);
      setState(() {
        result = value;
      });
    }).whenComplete(() {
      print("Complete");
    }).catchError((){
      print("Error");
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("AssetBundle Demo"),
      ),
      body: Center(
        child: Text("$result\n\n需要在pubspec.yaml中添加相关assets资源"),
      ),
    );
  }
}
