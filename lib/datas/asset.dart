import 'package:vp_flutter/pages/animationPage.dart';
import 'package:vp_flutter/pages/dependenciesPage.dart';
import 'package:vp_flutter/pages/iosPage.dart';
import 'package:vp_flutter/pages/layoutPage.dart';
import 'package:vp_flutter/pages/widgetPage.dart';
import 'package:vp_flutter/pages/lifePage.dart';

const imgUrl1 = "http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg";
const imgUrl2 = "http://pic15.nipic.com/20110628/1369025_192645024000_2.jpg";

const movie = "https://gitee.com/null_587_5980/FrameWork/raw/master/app/src/main/movie.json";
const user1 = "https://gitee.com/null_587_5980/FrameWork/raw/master/app/src/main/user1.json";

const searchList = [
  "水果-苹果",
  "水果-香蕉",
  "蔬菜-西红柿",
  "蔬菜-白菜",
];

const defaultList = [
  "推荐-1",
  "推荐-2",
];

const listName = ["IOS", "动画", "布局 & 定位", "常用控件", "依赖","生命周期"];

var listPage = [
  IOSPage(),
  AnimationPage(),
  LayoutPage(),
  WidgetPage(),
  DependenciesPage(),
  LifeDemo(),
];
