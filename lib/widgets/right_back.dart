import 'package:flutter/cupertino.dart';


/// 使用 cupertino 实现右拉返回
/// 而不适用 material
/// CupertinoPageScaffold已经集成好了右拉返回

class RightBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: Container(
            width: 100.0,
            height: 100.0,
            color: CupertinoColors.activeBlue,
            child: CupertinoButton(child: Icon(CupertinoIcons.add), onPressed: (){
              Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context){
                return RightBack();
              }));
            }),
          ),
        ),
      ),
    );
  }
}

