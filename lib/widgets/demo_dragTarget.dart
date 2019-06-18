import 'package:flutter/material.dart';
import 'package:vp_flutter/widgets/demo_draggable.dart';

/// 拖拽

class DragTargetDemo extends StatefulWidget {
  @override
  _DragTargetDemoState createState() => _DragTargetDemoState();
}

class _DragTargetDemoState extends State<DragTargetDemo> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Draggable Demo",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MyDraggable(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                    widgetColor: Colors.red,
                  ),
                  MyDraggable(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    widgetColor: Colors.lightGreen,
                  ),
                ],
              ),
              Container(margin: EdgeInsets.all(10.0),),
              DragTarget(
                onAccept: (Color color){
                  setState(() {
                    _draggableColor = color;
                  });
                },
                //context, _mapAvatarsToData<T>(_candidateAvatars), _mapAvatarsToData<dynamic>(_rejectedAvatars)
                builder: (context,candidateAvatars,rejectedAvatars){
                  return Container(
                    width: 220.0,
                    height: 220.0,
                    color: _draggableColor,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

