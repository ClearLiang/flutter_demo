import 'package:flutter/material.dart';


/// 悬浮布局

class StackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      home: MyStackView(),
    );
  }
}

class MyStackView extends StatefulWidget {
  @override
  _MyStackViewState createState() => _MyStackViewState();
}

class _MyStackViewState extends State<MyStackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stack Demo",
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.lightBlue,
            ),
            Container(
              width: 150.0,
              height: 150.0,
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
