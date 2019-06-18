import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  String imgUrl = "http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg";
  double sizes = 0.0;

  @override
  Widget build(BuildContext context) {
    sizes = MediaQuery.of(context).size.width / 3;

    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet Demo"),
      ),
      body: Container(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('弹出'),
          onPressed: () {

            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.network(
                        this.imgUrl,
                        height: sizes,
                        width: sizes,
                        fit: BoxFit.fill,
                      ),
                      Image.network(
                        this.imgUrl,
                        height: sizes,
                        width: sizes,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                );
              },
            ).then((val) {
              print("11$val");
            });
          },
        ),
      ),
    );
  }
}
