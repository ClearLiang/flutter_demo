import 'package:vp_flutter/pages/eachView.dart';
import 'package:vp_flutter/widgets/demo_Form.dart';
import 'package:vp_flutter/widgets/demo_align.dart';
import 'package:vp_flutter/widgets/demo_appbar.dart';
import 'package:vp_flutter/widgets/demo_aspectRatio.dart';
import 'package:vp_flutter/widgets/demo_assetBundle.dart';
import 'package:vp_flutter/widgets/demo_baseline.dart';
import 'package:vp_flutter/widgets/demo_bottomNavigationBar.dart';
import 'package:vp_flutter/widgets/demo_bottomSheet.dart';
import 'package:vp_flutter/widgets/demo_button.dart';
import 'package:vp_flutter/widgets/demo_buttonBar.dart';
import 'package:vp_flutter/widgets/demo_card.dart';
import 'package:vp_flutter/widgets/demo_center.dart';
import 'package:vp_flutter/widgets/demo_checkBox.dart';
import 'package:vp_flutter/widgets/demo_chip.dart';
import 'package:vp_flutter/widgets/demo_constrainedBox.dart';
import 'package:vp_flutter/widgets/demo_container.dart';
import 'package:vp_flutter/widgets/demo_dataTable.dart';
import 'package:vp_flutter/widgets/demo_date_time.dart';
import 'package:vp_flutter/widgets/demo_decoratedBox.dart';
import 'package:vp_flutter/widgets/demo_defaultTextStyle.dart';
import 'package:vp_flutter/widgets/demo_dialog.dart';
import 'package:vp_flutter/widgets/demo_dismissible.dart';
import 'package:vp_flutter/widgets/demo_dragTarget.dart';
import 'package:vp_flutter/widgets/demo_draggable.dart';
import 'package:vp_flutter/widgets/demo_drawer.dart';
import 'package:vp_flutter/widgets/demo_expansion_list.dart';
import 'package:vp_flutter/widgets/demo_expansion_tile.dart';
import 'package:vp_flutter/widgets/demo_fittedBox.dart';
import 'package:vp_flutter/widgets/demo_flow.dart';
import 'package:vp_flutter/widgets/demo_flutterLogo.dart';
import 'package:vp_flutter/widgets/demo_futureBuilder.dart';

const widgetNameList = [
  "Align",
  "AppBar",
  "AspectRatio",
  "AssetBundle",
  "Baseline",
  "BottomNavigationBar",
  "BottomSheet",
  "Button",
  "ButtonBar",
  "Card",
  "Center",
  "CheckBox",
  "Chip",
  "ConstrainedBox",
  "Container",
  "DataTable",
  "DateTime",
  "DecoratedBox",
  "DefaultTextStyle",
  "Dialog",
  "Dismissible",
  "Draggable",
  "DragTarget",
  "Drawer",
  "ExpansionTile",
  "ExpansionList",
  "FittedBox",
  "Flow",
  "FlutterLogo",
  "Form",
  "FutureBuilder",
];

var widgetList = [
  AlignDemo(),
  AppbarDemo(),
  AspectRatioDemo(),
  AssetBundleDemo(),
  BaselineDemo(),
  BottomNavigationBarDemo(),
  BottomSheetDemo(),
  ButtonDemo(),
  ButtonBarDemo(),
  CardDemo(),
  CenterDemo(),
  CheckBoxDemo(),
  ChipDemo(),
  ConstrainedBoxDemo(),
  ContainerDemo(),
  DataTableDemo(),
  DateTimeDemo(),
  DecoratedBoxDemo(),
  DefaultTextStyleDemo(),
  DialogShow(),
  DismissibleDemo(),
  DraggableDemo(),
  DragTargetDemo(),
  DrawerDemo(),
  ExpansionTileDemo(),
  ExpansionListDemo(),
  FittedBoxDemo(),
  FlowDemo(),
  FlutterLogoDemo(),
  FormDemo(),
  FutureBuilderDemo(),
  EachView("Empty Demo", true),
];

class User {
  String name;
  int age;

  User(this.name, this.age);
}

var userList = [
  User("Tom", 12),
  User("Jerry", 25),
  User("张三", 0),
  User("李四", 30),
  User("王五", 22),
];
