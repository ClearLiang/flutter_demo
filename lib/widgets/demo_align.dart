import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Align Demo",
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 120.0,
            height: 120.0,
            color: Colors.grey,
            child: Align(
              alignment: Alignment.bottomLeft,
              heightFactor: 1,
              widthFactor: 1,
              child: Container(
                height: 30.0,
                width: 30.0,
                color: Colors.lightBlue,
              ),
            ),
          ),
          Text("Alignment.bottomLeft"),
          Divider(),
          Container(
            width: 120.0,
            height: 120.0,
            color: Colors.grey,
            child: Align(
              ///(x * width of Widget/2 + width of Widget/2, y * height of Widget/2 + height of Widget/2) = (18.0, 24.0).
              /// 0.2 * 30 / 2 + 30 / 2 = 18
              /// 0.6 * 30 / 2 + 30 / 2 = 24
              alignment: Alignment(0.2, 0.6),//(x,y) ===> 以Container的中心为原点计算
              child: Container(
                height: 30.0,
                width: 30.0,
                color: Colors.lightBlue,
              ),
            ),
          ),
          Text("Alignment(0.2, 0.6)"),
          Divider(),
          Container(
            width: 120.0,
            height: 120.0,
            color: Colors.grey,
            child: Align(
              alignment: FractionalOffset(0.5, 0.5),//  ===> 以Container的左上角为原点计算
              child: Container(
                height: 30.0,
                width: 30.0,
                color: Colors.lightBlue,
              ),
            ),
          ),
          Text("FractionalOffset(0.5, 0.5)"),
        ],
      ),
    );
  }
}
