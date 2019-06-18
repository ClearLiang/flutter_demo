import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatio Demo"),
      ),
      body: Center(
        child: Container(
          height: 100.0,
          child: AspectRatio(
            aspectRatio: 2,
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "长宽比",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
