import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AnimatedContainer Demo",
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          color: Colors.green,
          width: 50.0,
          height: 50.0,
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 3000),
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
