import 'package:flutter/material.dart';
import 'package:vp_flutter/widgets/grid_view.dart';

/// 闪动跳转，类似于广播界面跳转主页面

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
            return GridViewLayout();
          }),
          (route) => route == null,
        );
      }
    });

    _controller.forward(); //播放动画
  }

  @override
  void dispose() {
    _controller.dispose(); //移除动画
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        "http://pic38.nipic.com/20140226/14002974_090351493134_2.jpg",
        scale: 2.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
