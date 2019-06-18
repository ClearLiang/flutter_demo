import 'package:flutter/material.dart';

/// 根据合适的尺度对child进行缩放和定位。

class FittedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Demo"),
      ),
      body: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.grey,
        child: FittedBox(
          fit: BoxFit.none,
          alignment: Alignment.bottomRight,
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
