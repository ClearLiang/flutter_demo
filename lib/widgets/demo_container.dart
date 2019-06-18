import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Demo"),
      ),
      body: Container(
        color: Colors.deepPurple,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: 100.0,
          height: 100.0,
          child: Container(
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
