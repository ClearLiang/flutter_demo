import 'package:flutter/material.dart';

class BaselineDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baseline Demo"),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    'AaBb',
                    style: TextStyle(
                      fontSize: 20.0,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                ),
                Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    'XxYyZz',
                    style: TextStyle(
                      fontSize: 35.0,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text("三个控件底部对齐"),
            ),
          ],
        ),
      ),
    );
  }
}
