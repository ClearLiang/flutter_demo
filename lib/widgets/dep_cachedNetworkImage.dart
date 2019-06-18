import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageDemo extends StatefulWidget {
  @override
  _CachedNetworkImageDemoState createState() => _CachedNetworkImageDemoState();
}

class _CachedNetworkImageDemoState extends State<CachedNetworkImageDemo> {
  String imgUrl = "";

  @override
  void initState() {
    super.initState();
    imgUrl = "http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBox Demo"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("改变"),
            onPressed: (){
              setState(() {
                imgUrl = "http://pic15.nipic.com/20110628/1369025_192645024000_2.jpg";
              });
            },
          ),
          CachedNetworkImage(
            width: 200.0,
            height: 150.0,
            imageUrl: imgUrl,
            fit: BoxFit.fill,
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
