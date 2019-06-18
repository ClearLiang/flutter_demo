import 'package:flutter/material.dart';

class DraggableDemo extends StatefulWidget {
  final Color widgetColor;
  final EdgeInsetsGeometry margin;

  const DraggableDemo({Key key, this.widgetColor, this.margin}) : super(key: key);

  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Draggable Demo"),),
      body: Container(
        margin: widget.margin == null ? EdgeInsets.all(10.0) : widget.margin,
        child: Draggable(
          data: widget.widgetColor == null ? Colors.red : widget.widgetColor,
          child: Container(
            width: 100.0,
            height: 100.0,
            color: widget.widgetColor == null ? Colors.red : widget.widgetColor,
          ),
          childWhenDragging: Container(
            //拖拽时原控件位置的child显示
            width: 100.0,
            height: 100.0,
            color: Colors.grey,
          ),
          feedback: Container(
            //拖拽的时候
            width: 100.0,
            height: 100.0,
            color: widget.widgetColor == null
                ? Colors.red.withOpacity(0.5)
                : widget.widgetColor.withOpacity(0.5),
          ),
          onDraggableCanceled: (Velocity velocity, Offset offset) {
            //松手的时候，可以更新控件位置
            /*setState(() {
            this.offset1 = offset;
          });*/
          },
          maxSimultaneousDrags: 1, //多点触控设备限制同时拖动的数量
        ),
      ),
    );
  }
}

///draggable 是一个可以拖拽到DragTarget的widget
class MyDraggable extends StatelessWidget {
  final Color widgetColor;
  final EdgeInsetsGeometry margin;

  const MyDraggable({Key key, this.widgetColor, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Draggable(
        data: widgetColor,
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widgetColor,
        ),
        childWhenDragging: Container(
          //拖拽时原控件位置的child显示
          width: 100.0,
          height: 100.0,
          color: Colors.grey,
        ),
        feedback: Container(
          //拖拽的时候
          width: 120.0,
          height: 120.0,
          color: widgetColor.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset) {
          //松手的时候，可以更新控件位置
          /*setState(() {
            this.offset1 = offset;
          });*/
        },
        maxSimultaneousDrags: 1, //多点触控设备限制同时拖动的数量
      ),
    );
  }
}
